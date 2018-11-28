package model;

public class Problem {
private String text;
private String title;
private String id;
private int TitleId;
public Problem(String id,String text,String title)
{
	this.id=id;
	this.text=text;
	this.title=title;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public int getTitleId() {
	return TitleId;
}
public void setTitleId(int titleId) {
	TitleId = titleId;
}


}
