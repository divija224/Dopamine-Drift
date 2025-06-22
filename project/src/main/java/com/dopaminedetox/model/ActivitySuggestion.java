package com.dopaminedetox.model;

public class ActivitySuggestion {
    private int id;
    private String title;
    private String description;
    private String category;
    private int durationMinutes;
    private String difficulty;
    private boolean isActive;
    
    // Constructors
    public ActivitySuggestion() {}
    
    public ActivitySuggestion(String title, String description, String category, 
                             int durationMinutes, String difficulty) {
        this.title = title;
        this.description = description;
        this.category = category;
        this.durationMinutes = durationMinutes;
        this.difficulty = difficulty;
        this.isActive = true;
    }
    
    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    
    public int getDurationMinutes() { return durationMinutes; }
    public void setDurationMinutes(int durationMinutes) { this.durationMinutes = durationMinutes; }
    
    public String getDifficulty() { return difficulty; }
    public void setDifficulty(String difficulty) { this.difficulty = difficulty; }
    
    public boolean isActive() { return isActive; }
    public void setActive(boolean active) { isActive = active; }
}