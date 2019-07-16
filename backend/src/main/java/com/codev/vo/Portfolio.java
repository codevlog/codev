package com.codev.vo;

public class Portfolio {
	private Integer id;
	private String title, body, image_url, written_date, author;

	public Portfolio() {
		super();
	}
	public Portfolio(String title, String body, String image_url, String written_date, String author) {
		super();
		this.title = title;
		this.body = body;
		this.image_url = image_url;
		this.written_date = written_date;
		this.author = author;
	}
	public Portfolio(Integer id, String title, String body, String image_url, String written_date, String author) {
		super();
		this.id = id;
		this.title = title;
		this.body = body;
		this.image_url = image_url;
		this.written_date = written_date;
		this.author = author;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getWritten_date() {
		return written_date;
	}

	public void setWritten_date(String written_date) {
		this.written_date = written_date;
	}

	@Override
	public String toString() {
		return "Portfolio [id=" + id + ", title=" + title + ", body=" + body + ", image_url=" + image_url
				+ ", written_date=" + written_date + "]";
	}
}
