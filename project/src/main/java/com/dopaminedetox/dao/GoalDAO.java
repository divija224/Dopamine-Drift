package com.dopaminedetox.dao;

import com.dopaminedetox.model.DetoxGoal;
import com.dopaminedetox.util.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GoalDAO {
    
    public boolean createGoal(DetoxGoal goal) {
        String sql = "INSERT INTO detox_goals (user_id, title, description, category, difficulty, target_days) VALUES (?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            
            stmt.setInt(1, goal.getUserId());
            stmt.setString(2, goal.getTitle());
            stmt.setString(3, goal.getDescription());
            stmt.setString(4, goal.getCategory());
            stmt.setString(5, goal.getDifficulty());
            stmt.setInt(6, goal.getTargetDays());
            
            int rowsAffected = stmt.executeUpdate();
            
            if (rowsAffected > 0) {
                ResultSet generatedKeys = stmt.getGeneratedKeys();
                if (generatedKeys.next()) {
                    goal.setId(generatedKeys.getInt(1));
                    
                    // Initialize streak for this goal
                    initializeStreak(goal.getId(), goal.getUserId());
                }
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    private void initializeStreak(int goalId, int userId) {
        String sql = "INSERT INTO streaks (goal_id, user_id, current_streak, longest_streak) VALUES (?, ?, 0, 0)";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, goalId);
            stmt.setInt(2, userId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List<DetoxGoal> getGoalsByUserId(int userId) {
        List<DetoxGoal> goals = new ArrayList<>();
        String sql = "SELECT * FROM detox_goals WHERE user_id = ? AND is_active = TRUE ORDER BY created_at DESC";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                DetoxGoal goal = new DetoxGoal();
                goal.setId(rs.getInt("id"));
                goal.setUserId(rs.getInt("user_id"));
                goal.setTitle(rs.getString("title"));
                goal.setDescription(rs.getString("description"));
                goal.setCategory(rs.getString("category"));
                goal.setDifficulty(rs.getString("difficulty"));
                goal.setTargetDays(rs.getInt("target_days"));
                
                Timestamp createdAt = rs.getTimestamp("created_at");
                if (createdAt != null) {
                    goal.setCreatedAt(createdAt.toLocalDateTime());
                }
                
                goal.setActive(rs.getBoolean("is_active"));
                goals.add(goal);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return goals;
    }
    
    public DetoxGoal getGoalById(int goalId) {
        String sql = "SELECT * FROM detox_goals WHERE id = ? AND is_active = TRUE";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, goalId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                DetoxGoal goal = new DetoxGoal();
                goal.setId(rs.getInt("id"));
                goal.setUserId(rs.getInt("user_id"));
                goal.setTitle(rs.getString("title"));
                goal.setDescription(rs.getString("description"));
                goal.setCategory(rs.getString("category"));
                goal.setDifficulty(rs.getString("difficulty"));
                goal.setTargetDays(rs.getInt("target_days"));
                
                Timestamp createdAt = rs.getTimestamp("created_at");
                if (createdAt != null) {
                    goal.setCreatedAt(createdAt.toLocalDateTime());
                }
                
                goal.setActive(rs.getBoolean("is_active"));
                return goal;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public boolean deleteGoal(int goalId, int userId) {
        String sql = "UPDATE detox_goals SET is_active = FALSE WHERE id = ? AND user_id = ?";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, goalId);
            stmt.setInt(2, userId);
            
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}