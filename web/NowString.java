package web;
import java.util.Date;
import java.text.SimpleDateFormat;

public class NowString {
          SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
         String time=df.format(new Date());
         // System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
         //return time;
 public String GetTime()
 {
	 return time;
 }
}