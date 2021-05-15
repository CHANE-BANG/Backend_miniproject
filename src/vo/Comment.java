package vo;

import java.util.Date;

public class Comment {
	protected int cmtNo;
	protected int postNo;
	protected int userId;
	protected String content;
	protected Date writedate;
	protected int deletedCmt;
	
	public int getCmtNo() {
		return cmtNo;
	}
	public Comment setCmtNo(int cmtNo) {
		this.cmtNo = cmtNo;
		return this;
	}
	public int getPostNo() {
		return postNo;
	}
	public Comment setPostNo(int postNo) {
		this.postNo = postNo;
		return this;
	}
	public int getUserId() {
		return userId;
	}
	public Comment setUserId(int userId) {
		this.userId = userId;
		return this;
	}
	public String getContent() {
		return content;
	}
	public Comment setContent(String content) {
		this.content = content;
		return this;
	}
	public Date getWritedate() {
		return writedate;
	}
	public Comment setWritedate(Date writedate) {
		this.writedate = writedate;
		return this;
	}
	public int getDeletedCmt() {
		return deletedCmt;
	}
	public Comment setDeletedCmt(int deletedCmt) {
		this.deletedCmt = deletedCmt;
		return this;
	}
	
}
