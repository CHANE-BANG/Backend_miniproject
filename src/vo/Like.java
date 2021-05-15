package vo;

public class Like {
	
	protected int likeNo;
    protected int postNo;
	protected int userId;
	
	public int getLikeNo() {
		return likeNo;
	}
	public Like setLikeNo(int likeNo) {
		this.likeNo = likeNo;
		return this;
	}
	public int getPostNo() {
		return postNo;
	}
	public Like setPostNo(int postNo) {
		this.postNo = postNo;
		return this;
	}
	public int getUserId() {
		return userId;
	}
	public Like setUserId(int userId) {
		this.userId = userId;
		return this;
	}
	   
}
