package vo;
//DTO
public class FileDTO {
   protected int post_id; // 업로드한 게시글 구분을 위한 게시글기본키
   protected String fileName; // 사용자가 업로드한 파일 이름
   protected String fileRealName; // 서버에 저장된 실제 파일 이름 
public int getPost_id() {
	return post_id;
}
public void setPost_id(int post_id) {
	this.post_id = post_id;
}
public String getFileName() {
	return fileName;
}
public void setFileName(String fileName) {
	this.fileName = fileName;
}
public String getFileRealName() {
	return fileRealName;
}
public void setFileRealName(String fileRealName) {
	this.fileRealName = fileRealName;
}
public FileDTO(int post_id, String fileName, String fileRealName) {
	super();
	this.post_id = post_id;
	this.fileName = fileName;
	this.fileRealName = fileRealName;
}

public FileDTO() {
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "FileDTO [post_id=" + post_id + ", fileName=" + fileName + ", fileRealName=" + fileRealName + "]";
}
   


}