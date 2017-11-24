package bean;

import java.util.HashMap;

import javax.crypto.AEADBadTagException;

public class TranslatorBean {
	public String chineseWord;
	private String englishWord;
	private HashMap<String, String> data=null;
	public TranslatorBean(){	
		data=new HashMap<String, String>();
		
		chineseWord="默认";
		
		data.put("姓名","name");
		data.put("性别","sex");
		data.put("年龄","age");
		data.put("看书","reading");
		data.put("跳舞","dancing");
		data.put("唱歌","singing");
		data.put("游泳","swimming");
		data.put("足球","play football");
		data.put("爱好","favourite");	
	}
	public String translate(){
		String english = null;
		if(data.containsKey(chineseWord))
			english=data.get(chineseWord);
		else english=chineseWord+"的英文";
		setEnglishWord(english);
		return english;
	}
	public String getChineseWord() {
		return chineseWord;
	}
	public void setChineseWord(String chineseWord) {
		this.chineseWord = chineseWord;
	}
	public String getEnglishWord() {
		return englishWord;
	}
	public void setEnglishWord(String englishWord) {
		this.englishWord = englishWord;
	}
	public HashMap<String, String> getData() {
		return data;
	}
	public void setData(HashMap<String, String> data) {
		this.data = data;
	}	
}
