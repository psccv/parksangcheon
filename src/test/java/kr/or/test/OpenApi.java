package kr.or.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Calendar;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;


public class OpenApi {
	
    public static void main(String[] args) {
    	// 실행간격 지정(5초)
    	int sleepSec = 5 ;
    	// 주기적인 작업을 위한 
    	final ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);
    	exec.scheduleAtFixedRate(new Runnable(){ 
    		public void run(){ 
    			try { 
    				serviceApi();
    			} catch (Exception e) { 
    				e.printStackTrace(); 
    				// 에러 발생시 Executor를 중지시킨다 
    				exec.shutdown(); 
    				} 
    			} 
    		}, 0, sleepSec, TimeUnit.SECONDS); 
    }
    
    public static void serviceApi() {
		BufferedReader br = null;
		
        try{    
        	/*String urlstr = "http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML"
            		+ "&authKey=or8ZEdOWcW2VfG8cJVWCAG1U1HTqhOaH&pageNum=1"
            		+ "&pageSize=10&srchTraStDt=20200622&srchTraEndDt=20200922&outType=1&sort=ASC&sortCol=TR_STT_DT";*/
        	String urlstr = "http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML"
            		+ "&authKey=인증키부분&pageNum=1"
            		+ "&pageSize=10&srchTraStDt=20200622&srchTraEndDt=20200922&outType=1&sort=ASC&sortCol=TR_STT_DT";
        	
            URL url = new URL(urlstr);
            HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
            urlconnection.setRequestMethod("GET");
            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"euc-kr"));
            String result = "";
            String line;
            while((line = br.readLine()) != null) {
                result = result + line + "\n";
            }
            //한줄로 출력
            //System.out.println(result);
            //xml형식으로 출력
            String resultFormatXml = XmlUtils.formatXml(result.toString());
            System.out.println(resultFormatXml);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        // 콘솔에 현재 시간 출력
        Calendar cal = Calendar.getInstance();
		System.out.println(cal.getTime()); 
		
	}
}