package com.dopaminedetox.model;

import java.time.LocalDateTime;

public class DetoxGoal {
    private int id;
    private int userId;
    private String title;
    private String description;
    private String category;
    private String difficulty;
    private int targetDays;
    private LocalDateTime createdAt;
    private boolean isActive;
    
    // Constructors
    public DetoxGoal() {}
    
    public DetoxGoal(int userId, String title, String description, String category, 
                     String difficulty, int targetDays) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.category = category;
        this.difficulty = difficulty;
        this.targetDays = targetDays;
        this.isActive = true;
    }
    
    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    
    public String getDifficulty() { return difficulty; }
    public void setDifficulty(String difficulty) { this.difficulty = difficulty; }
    
    public int getTargetDays() { return targetDays; }
    public void setTargetDays(int targetDays) { this.targetDays = targetDays; }
    
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
    
    public boolean isActive() { return isActive; }
    public void setActive(boolean active) { isActive = active; }
}