-- Sample data for Dopamine Detox Habit Tracker
USE dopamine_detox_db;

-- Insert activity suggestions (100+ activities)
INSERT INTO activity_suggestions (title, description, category, duration_minutes, difficulty) VALUES
-- Creative Activities
('Sketch in a notebook', 'Draw anything that comes to mind - objects around you, abstract patterns, or memories', 'creative', 30, 'easy'),
('Write a short story', 'Create a fictional story with interesting characters and plot twists', 'creative', 45, 'medium'),
('Learn origami', 'Fold paper into beautiful shapes and animals using online tutorials', 'creative', 20, 'easy'),
('Paint with watercolors', 'Express yourself through colors and brush strokes', 'creative', 60, 'medium'),
('Write poetry', 'Compose verses about your feelings, nature, or life experiences', 'creative', 25, 'easy'),
('Create a photo collage', 'Arrange printed photos or magazine cutouts into artistic compositions', 'creative', 40, 'easy'),
('Learn calligraphy', 'Practice beautiful handwriting with different pen styles', 'creative', 35, 'medium'),
('Make jewelry', 'Create bracelets or necklaces using beads, wire, or string', 'creative', 50, 'medium'),
('Design a room layout', 'Sketch and plan how you would redesign your living space', 'creative', 30, 'easy'),
('Write song lyrics', 'Compose lyrics about your experiences or emotions', 'creative', 25, 'easy'),

-- Physical Activities
('Take a nature walk', 'Explore local parks or trails while observing wildlife and plants', 'physical', 45, 'easy'),
('Do bodyweight exercises', 'Perform push-ups, squats, and planks to build strength', 'physical', 30, 'medium'),
('Practice yoga', 'Follow along with beginner-friendly yoga sequences', 'physical', 40, 'easy'),
('Go for a bike ride', 'Cycle through your neighborhood or nearby bike paths', 'physical', 60, 'medium'),
('Dance to music', 'Put on your favorite songs and move your body freely', 'physical', 20, 'easy'),
('Do stretching exercises', 'Improve flexibility with gentle stretching routines', 'physical', 15, 'easy'),
('Practice martial arts forms', 'Learn basic movements from karate, tai chi, or other martial arts', 'physical', 35, 'medium'),
('Play frisbee', 'Throw a frisbee in the park or backyard', 'physical', 30, 'easy'),
('Do jumping jacks', 'Get your heart rate up with this simple cardio exercise', 'physical', 10, 'easy'),
('Practice balance poses', 'Challenge your stability with tree pose and other balance exercises', 'physical', 20, 'easy'),

-- Social Activities
('Call a friend or family member', 'Have a meaningful conversation with someone you care about', 'social', 30, 'easy'),
('Write a letter', 'Send a handwritten note to someone special', 'social', 25, 'easy'),
('Organize a game night', 'Invite friends over for board games or card games', 'social', 120, 'medium'),
('Volunteer in your community', 'Help at local charities, food banks, or community centers', 'social', 90, 'medium'),
('Join a local club', 'Find groups that share your interests like book clubs or hiking groups', 'social', 60, 'medium'),
('Teach someone a skill', 'Share your knowledge by teaching a friend or family member', 'social', 45, 'easy'),
('Plan a picnic', 'Organize an outdoor meal with friends or family', 'social', 90, 'medium'),
('Visit elderly neighbors', 'Spend time with older community members who might appreciate company', 'social', 45, 'easy'),
('Start a conversation with a stranger', 'Practice social skills by chatting with someone new', 'social', 10, 'easy'),
('Organize a potluck dinner', 'Coordinate a meal where everyone brings a dish to share', 'social', 120, 'medium'),

-- Mindful Activities
('Practice meditation', 'Sit quietly and focus on your breath for inner peace', 'mindful', 20, 'easy'),
('Do breathing exercises', 'Practice deep breathing techniques to reduce stress', 'mindful', 10, 'easy'),
('Keep a gratitude journal', 'Write down three things you are grateful for each day', 'mindful', 15, 'easy'),
('Practice mindful eating', 'Eat a meal slowly, savoring each bite and texture', 'mindful', 30, 'easy'),
('Do a body scan meditation', 'Focus attention on different parts of your body systematically', 'mindful', 25, 'medium'),
('Practice loving-kindness meditation', 'Send positive thoughts to yourself and others', 'mindful', 20, 'easy'),
('Observe nature mindfully', 'Sit outside and notice details in plants, animals, and weather', 'mindful', 30, 'easy'),
('Practice progressive muscle relaxation', 'Tense and release muscle groups to reduce physical tension', 'mindful', 25, 'medium'),
('Do mindful walking', 'Walk slowly while paying attention to each step and sensation', 'mindful', 20, 'easy'),
('Practice visualization', 'Imagine peaceful scenes or positive outcomes in detail', 'mindful', 15, 'easy'),

-- Productive Activities
('Organize your living space', 'Declutter and arrange your room or workspace efficiently', 'productive', 60, 'medium'),
('Learn a new language', 'Study vocabulary and grammar of a language you want to speak', 'productive', 45, 'medium'),
('Plan your week', 'Create schedules and set goals for the upcoming days', 'productive', 30, 'easy'),
('Update your resume', 'Refresh your professional profile with recent accomplishments', 'productive', 45, 'medium'),
('Research a topic of interest', 'Dive deep into subjects that fascinate you', 'productive', 40, 'easy'),
('Practice a musical instrument', 'Learn songs or scales on piano, guitar, or other instruments', 'productive', 45, 'medium'),
('Create a budget', 'Track your expenses and plan your financial goals', 'productive', 35, 'medium'),
('Learn to code', 'Practice programming with online tutorials and exercises', 'productive', 60, 'hard'),
('Write in a personal journal', 'Reflect on your thoughts, experiences, and goals', 'productive', 25, 'easy'),
('Plan a future trip', 'Research destinations and create detailed travel itineraries', 'productive', 50, 'easy'),

-- Outdoor Activities
('Go stargazing', 'Look up at the night sky and identify constellations', 'outdoor', 45, 'easy'),
('Have a picnic', 'Eat a meal outdoors in a park or natural setting', 'outdoor', 90, 'easy'),
('Go geocaching', 'Use GPS to find hidden treasures in your area', 'outdoor', 60, 'medium'),
('Visit a farmers market', 'Explore local produce and artisan goods', 'outdoor', 60, 'easy'),
('Go bird watching', 'Observe and identify different bird species in nature', 'outdoor', 45, 'easy'),
('Explore a new neighborhood', 'Walk through areas of your city you have never visited', 'outdoor', 60, 'easy'),
('Have a campfire', 'Build a safe fire and enjoy the warmth and ambiance', 'outdoor', 90, 'medium'),
('Go fishing', 'Try your luck at catching fish in local lakes or rivers', 'outdoor', 120, 'medium'),
('Collect natural objects', 'Gather interesting rocks, leaves, or shells', 'outdoor', 30, 'easy'),
('Watch a sunrise or sunset', 'Experience the beauty of natural light transitions', 'outdoor', 30, 'easy'),

-- Learning Activities
('Read a book', 'Dive into fiction or non-fiction that expands your mind', 'learning', 60, 'easy'),
('Watch educational documentaries', 'Learn about science, history, or culture through films', 'learning', 90, 'easy'),
('Take an online course', 'Enroll in free courses on platforms like Coursera or Khan Academy', 'learning', 60, 'medium'),
('Learn about astronomy', 'Study planets, stars, and galaxies through books or apps', 'learning', 45, 'easy'),
('Practice mental math', 'Improve your calculation skills without a calculator', 'learning', 20, 'medium'),
('Study history', 'Learn about different time periods and historical events', 'learning', 45, 'easy'),
('Learn about different cultures', 'Research traditions, foods, and customs from around the world', 'learning', 40, 'easy'),
('Practice memory techniques', 'Learn methods to improve your ability to remember information', 'learning', 30, 'medium'),
('Study philosophy', 'Read about different philosophical ideas and thinkers', 'learning', 50, 'medium'),
('Learn about nutrition', 'Study how different foods affect your health and energy', 'learning', 35, 'easy');

-- Insert daily challenges for the next 30 days
INSERT INTO daily_challenges (title, description, challenge_date, badge_name, points) VALUES
('Morning Phone-Free Hour', 'Keep your phone away for the first hour after waking up', CURDATE(), 'Early Bird', 15),
('No Social Media Before Noon', 'Avoid all social media platforms until 12 PM', DATE_ADD(CURDATE(), INTERVAL 1 DAY), 'Morning Focus', 20),
('Take 5000 Steps', 'Walk at least 5000 steps without using your phone', DATE_ADD(CURDATE(), INTERVAL 2 DAY), 'Step Counter', 15),
('Read for 30 Minutes', 'Read a physical book or magazine for half an hour', DATE_ADD(CURDATE(), INTERVAL 3 DAY), 'Bookworm', 10),
('No Impulse Purchases', 'Avoid buying anything non-essential today', DATE_ADD(CURDATE(), INTERVAL 4 DAY), 'Money Saver', 25),
('Digital Sunset', 'Turn off all screens 1 hour before bedtime', DATE_ADD(CURDATE(), INTERVAL 5 DAY), 'Sleep Guardian', 20),
('Cook a Meal from Scratch', 'Prepare a meal without using any processed foods', DATE_ADD(CURDATE(), INTERVAL 6 DAY), 'Chef Master', 15),
('No Gaming Day', 'Avoid all video games for the entire day', DATE_ADD(CURDATE(), INTERVAL 7 DAY), 'Game Breaker', 30);

-- Insert motivational quotes
INSERT INTO motivational_quotes (quote_text, author, category) VALUES
('The best way to take control of your life is to take control of your attention.', 'Unknown', 'mindfulness'),
('You are not your thoughts. You are the observer of your thoughts.', 'Buddha', 'mindfulness'),
('The present moment is the only time over which we have dominion.', 'Thich Nhat Hanh', 'mindfulness'),
('Discipline is choosing between what you want now and what you want most.', 'Abraham Lincoln', 'motivation'),
('The cave you fear to enter holds the treasure you seek.', 'Joseph Campbell', 'motivation'),
('Progress, not perfection, is the goal.', 'Unknown', 'motivation'),
('Your future self is watching you right now through your memories.', 'Unknown', 'motivation'),
('The dopamine hit of instant gratification is the enemy of long-term satisfaction.', 'Unknown', 'wellness'),
('Boredom is not the enemy. Boredom is the space where creativity begins.', 'Unknown', 'productivity'),
('True freedom is not the ability to do whatever you want, but the power to do what you ought.', 'Unknown', 'wellness');

-- Create a demo user (password: demo123)
INSERT INTO users (username, email, password_hash, full_name) VALUES
('demo', 'demo@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye1VdLSnqpEt6KZK6Kef6XjzKzOJPjBnW', 'Demo User');

-- Create sample goals for demo user
INSERT INTO detox_goals (user_id, title, description, category, difficulty, target_days) VALUES
(1, 'Social Media Detox', 'Limit social media usage to 30 minutes per day', 'social_media', 'medium', 21),
(1, 'Gaming Break', 'Take a complete break from video games', 'gaming', 'hard', 14),
(1, 'Mindful Entertainment', 'Replace mindless scrolling with reading', 'entertainment', 'easy', 7);

-- Initialize streaks for demo goals
INSERT INTO streaks (goal_id, user_id, current_streak, longest_streak) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0);