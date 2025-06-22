-- Dopamine Detox Habit Tracker Database Schema
-- MySQL 8.0+

CREATE DATABASE IF NOT EXISTS dopamine_detox_db;
USE dopamine_detox_db;

-- Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,
    is_active BOOLEAN DEFAULT TRUE
);

-- Detox goals table
CREATE TABLE detox_goals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    category ENUM('social_media', 'gaming', 'entertainment', 'shopping', 'food', 'custom') DEFAULT 'custom',
    difficulty ENUM('easy', 'medium', 'hard') DEFAULT 'medium',
    target_days INT DEFAULT 21,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Daily progress tracking
CREATE TABLE daily_progress (
    id INT AUTO_INCREMENT PRIMARY KEY,
    goal_id INT NOT NULL,
    user_id INT NOT NULL,
    progress_date DATE NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    notes TEXT,
    completed_at TIMESTAMP NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (goal_id) REFERENCES detox_goals(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE KEY unique_daily_progress (goal_id, progress_date)
);

-- Streaks tracking
CREATE TABLE streaks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    goal_id INT NOT NULL,
    user_id INT NOT NULL,
    current_streak INT DEFAULT 0,
    longest_streak INT DEFAULT 0,
    last_completed_date DATE NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (goal_id) REFERENCES detox_goals(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE KEY unique_goal_streak (goal_id)
);

-- Activity suggestions
CREATE TABLE activity_suggestions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    category ENUM('creative', 'physical', 'social', 'mindful', 'productive', 'outdoor', 'learning') NOT NULL,
    duration_minutes INT DEFAULT 30,
    difficulty ENUM('easy', 'medium', 'hard') DEFAULT 'medium',
    is_active BOOLEAN DEFAULT TRUE
);

-- Daily challenges
CREATE TABLE daily_challenges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    challenge_date DATE UNIQUE NOT NULL,
    badge_name VARCHAR(100),
    points INT DEFAULT 10,
    is_active BOOLEAN DEFAULT TRUE
);

-- User challenge completions
CREATE TABLE user_challenge_completions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    challenge_id INT NOT NULL,
    completed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (challenge_id) REFERENCES daily_challenges(id) ON DELETE CASCADE,
    UNIQUE KEY unique_user_challenge (user_id, challenge_id)
);

-- Mood journal entries
CREATE TABLE mood_journal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    goal_id INT NULL,
    entry_date DATE NOT NULL,
    mood_score INT CHECK (mood_score >= 1 AND mood_score <= 10),
    reflection_text TEXT,
    energy_level INT CHECK (energy_level >= 1 AND energy_level <= 5),
    focus_level INT CHECK (focus_level >= 1 AND focus_level <= 5),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (goal_id) REFERENCES detox_goals(id) ON DELETE SET NULL
);

-- Detox score assessments
CREATE TABLE detox_assessments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    assessment_date DATE NOT NULL,
    screen_time_control INT CHECK (screen_time_control >= 1 AND screen_time_control <= 5),
    impulse_control INT CHECK (impulse_control >= 1 AND impulse_control <= 5),
    mindfulness_level INT CHECK (mindfulness_level >= 1 AND mindfulness_level <= 5),
    overall_score DECIMAL(5,2) GENERATED ALWAYS AS (
        ((screen_time_control + impulse_control + mindfulness_level) / 15.0) * 100
    ) STORED,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE KEY unique_daily_assessment (user_id, assessment_date)
);

-- User achievements/badges
CREATE TABLE user_achievements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    badge_name VARCHAR(100) NOT NULL,
    badge_description TEXT,
    earned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Motivational quotes
CREATE TABLE motivational_quotes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quote_text TEXT NOT NULL,
    author VARCHAR(100),
    category ENUM('motivation', 'mindfulness', 'productivity', 'wellness') DEFAULT 'motivation',
    is_active BOOLEAN DEFAULT TRUE
);

-- Create indexes for better performance
CREATE INDEX idx_daily_progress_date ON daily_progress(progress_date);
CREATE INDEX idx_daily_progress_user ON daily_progress(user_id);
CREATE INDEX idx_mood_journal_date ON mood_journal(entry_date);
CREATE INDEX idx_detox_assessments_date ON detox_assessments(assessment_date);
CREATE INDEX idx_user_achievements_user ON user_achievements(user_id);