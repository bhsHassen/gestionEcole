package com.javatpoint.bean;


public class Subject {
	
	
	private long id;
	private String label;
	private String description;

	private Category category;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Subject [id=" + id + ", label=" + label + ", description=" + description + ", category=" + category
				+ "]";
	}
	

    

}