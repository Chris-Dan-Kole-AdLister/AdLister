package com.codeup.adlister.models;

public class Image {

	private long id;
	private long ad_id;
	private String url;
	private String description;

	public Image(long id, long ad_id, String url, String description) {
		this.id = id;
		this.ad_id = ad_id;
		this.url = url;
		this.description = description;
	}

	public Image(long ad_id, String url, String description) {
		this.ad_id = ad_id;
		this.url = url;
		this.description = description;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getAd_id() {
		return ad_id;
	}

	public void setAd_id(long ad_id) {
		this.ad_id = ad_id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
