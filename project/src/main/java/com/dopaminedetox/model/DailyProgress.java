package com.dopaminedetox.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class DailyProgress {
    private int id;
    private int goalId;
    private int userId;
    private LocalDate progressDate;
    private boolean completed;
    private String notes;
    private LocalDateTime completedAt;
    private LocalDateTime createdAt;
    
    // Constructors
    public DailyProgress() {}
    
    public DailyProgress(int goalId, int userId, LocalDate progressDate) {
        this.goalId = goalId;
        this.userId = userId;
        this.progressDate = progressDate;
        this.completed = false;
    }
    
    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public int getGoalId() { return goalId; }
    public void setGoalId(int goalId) { this.goalId = goalId; }
    
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    
    public LocalDate getProgressDate() { return progressDate; }
    public void setProgressDate(LocalDate progressDate) { this.progressDate = progressDate; }
    
    public boolean isCompleted() { return completed; }
    public void setCompleted(boolean completed) { this.completed = completed; }
    
    public String getNotes() { return notes; }
    public void setNotes(String notes) { this.notes = notes; }
    
    public LocalDateTime getCompletedAt() { return completedAt; }
    public void setCompletedAt(LocalDateTime completedAt) { this.completedAt = completedAt; }
    
    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}