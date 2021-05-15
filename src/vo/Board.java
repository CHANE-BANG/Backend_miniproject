package vo;

import java.util.Date;

public class Board {
	protected int no;
	protected String genre;
	protected String title;
	protected String content;
	protected Date writedate;
	protected String imageUrl;
	protected int userId; // 유저 기본키
	protected String writer;
	protected int deletedPost;
	protected int hit;
	protected int like;
	protected int commentCnt; //댓글수
	protected String movieTitle;
	protected String director;
	protected String grade;
	public int getNo() {
		return no;
	}
	public Board setNo(int no) {
		this.no = no;
		return this;
	}
	public String getGenre() {
		return genre;
	}
	public Board setGenre(String genre) {
		this.genre = genre;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public Board setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getContent() {
		return content;
	}
	public Board setContent(String content) {
		this.content = content;
		return this;
	}
	public Date getWritedate() {
		return writedate;
	}
	public Board setWritedate(Date writedate) {
		this.writedate = writedate;
		return this;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public Board setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
		return this;
	}
	public int getUserId() {
		return userId;
	}
	public Board setUserId(int userId) {
		this.userId = userId;
		return this;
	}
	public String getWriter() {
		return writer;
	}
	public Board setWriter(String writer) {
		this.writer = writer;
		return this;
	}
	public int getDeletedPost() {
		return deletedPost;
	}
	public Board setDeletedPost(int deletedPost) {
		this.deletedPost = deletedPost;
		return this;
	}
	public int getHit() {
		return hit;
	}
	public Board setHit(int hit) {
		this.hit = hit;
		return this;
	}
	public int getLike() {
		return like;
	}
	public Board setLike(int like) {
		this.like = like;
		return this;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public Board setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
		return this;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public Board setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
		return this;
	}
	public String getDirector() {
		return director;
	}
	public Board setDirector(String director) {
		this.director = director;
		return this;
	}
	public String getGrade() {
		return grade;
	}
	public Board setGrade(String grade) {
		this.grade = grade;
		return this;
	}
	
	
}
