package cn.lk.examssh.pojo;




import java.sql.Timestamp;

import org.hibernate.annotations.Entity;

/**
 * News entity. @author MyEclipse Persistence Tools
 */
@Entity
public class News implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer classid;
	private String bjs;
	private String title;
	private String content;
	private byte[] pic;
	private String istop;
	private Timestamp tjdate;
	private String cruser;
	private Integer hitnum;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** minimal constructor */
	public News(String title, String content, String istop, Timestamp tjdate,
			String cruser, Integer hitnum) {
		this.title = title;
		this.content = content;
		this.istop = istop;
		this.tjdate = tjdate;
		this.cruser = cruser;
		this.hitnum = hitnum;
	}

	/** full constructor */
	public News(Integer classid, String bjs, String title, String content,
			byte[] pic, String istop, Timestamp tjdate, String cruser,
			Integer hitnum) {
		this.classid = classid;
		this.bjs = bjs;
		this.title = title;
		this.content = content;
		this.pic = pic;
		this.istop = istop;
		this.tjdate = tjdate;
		this.cruser = cruser;
		this.hitnum = hitnum;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getClassid() {
		return this.classid;
	}

	public void setClassid(Integer classid) {
		this.classid = classid;
	}

	public String getBjs() {
		return this.bjs;
	}

	public void setBjs(String bjs) {
		this.bjs = bjs;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public byte[] getPic() {
		return this.pic;
	}

	public void setPic(byte[] pic) {
		this.pic = pic;
	}

	public String getIstop() {
		return this.istop;
	}

	public void setIstop(String istop) {
		this.istop = istop;
	}

	public Timestamp getTjdate() {
		return this.tjdate;
	}

	public void setTjdate(Timestamp tjdate) {
		this.tjdate = tjdate;
	}

	public String getCruser() {
		return this.cruser;
	}

	public void setCruser(String cruser) {
		this.cruser = cruser;
	}

	public Integer getHitnum() {
		return this.hitnum;
	}

	public void setHitnum(Integer hitnum) {
		this.hitnum = hitnum;
	}

	public void setTjdate(long time) {
		// TODO Auto-generated method stub
		this.tjdate = tjdate;
	}

}