# Dopamine Detox Habit Tracker

A comprehensive full-stack web application for tracking dopamine detox habits and building healthier digital relationships.

## 🌟 Features

### Core Functionality
- **User Authentication**: Secure registration and login system
- **Goal Management**: Create, track, and manage custom detox goals
- **Progress Tracking**: Daily check-ins with streak counting
- **Dashboard**: Overview of current goals, progress, and achievements

### Advanced Features
- **100+ Activity Suggestions**: Categorized offline activities to replace digital habits
- **Daily Challenges**: Rotating challenges with badge rewards
- **Mood Journal**: Reflection system with mood tracking
- **Detox Score**: Weekly assessment based on self-evaluation
- **Gamification**: Achievement system with unlockable badges
- **Motivational Content**: Daily quotes and dopamine facts

## 🛠 Tech Stack

### Backend
- **Java 11** with Servlets and JSP
- **MySQL 8.0** for data persistence
- **Maven** for dependency management
- **BCrypt** for password hashing
- **GSON** for JSON processing

### Frontend
- **HTML5** with semantic markup
- **CSS3** with modern features (Grid, Flexbox, Gradients)
- **Vanilla JavaScript** for interactivity
- **Responsive Design** for mobile compatibility

## 📁 Project Structure

```
src/
├── main/
│   ├── java/com/dopaminedetox/
│   │   ├── dao/           # Data Access Objects
│   │   ├── model/         # Entity classes
│   │   ├── servlet/       # HTTP request handlers
│   │   └── util/          # Utility classes
│   └── webapp/
│       ├── WEB-INF/
│       │   ├── jsp/       # JSP view templates
│       │   └── web.xml    # Servlet configuration
│       ├── css/           # Stylesheets
│       ├── js/            # JavaScript files
│       └── index.jsp      # Entry point
database/
├── schema.sql             # Database structure
└── sample_data.sql        # Initial data
```

## 🚀 Setup Instructions

### Prerequisites
- Java 11 or higher
- MySQL 8.0 or higher
- Apache Tomcat 9.0 or higher
- Maven 3.6 or higher

### Database Setup
1. Install and start MySQL server
2. Create the database:
   ```sql
   mysql -u root -p < database/schema.sql
   mysql -u root -p < database/sample_data.sql
   ```
3. Update database credentials in `DatabaseConnection.java`

### Application Setup
1. Clone the repository
2. Configure database connection in `src/main/java/com/dopaminedetox/util/DatabaseConnection.java`
3. Build the project:
   ```bash
   mvn clean compile
   ```
4. Deploy to Tomcat or run with embedded server:
   ```bash
   mvn tomcat7:run
   ```
5. Access the application at `http://localhost:8080`

### Demo Account
- **Username**: `demo`
- **Password**: `demo123`

## 🎯 Key Features Explained

### Goal Categories
- **Social Media**: Limit or eliminate social platform usage
- **Gaming**: Control video game consumption
- **Entertainment**: Replace passive consumption with active pursuits
- **Shopping**: Prevent impulse purchases
- **Food**: Mindful eating habits
- **Custom**: User-defined goals

### Activity Suggestions
Over 100 curated activities across categories:
- **Creative**: Art, writing, music, crafts
- **Physical**: Exercise, sports, outdoor activities
- **Social**: Community engagement, relationships
- **Mindful**: Meditation, reflection, breathing
- **Productive**: Learning, organizing, planning
- **Outdoor**: Nature activities, exploration
- **Learning**: Education, skill development

### Gamification Elements
- **Streak Tracking**: Current and longest streaks
- **Achievement Badges**: Unlockable rewards
- **Daily Challenges**: Rotating objectives
- **Detox Score**: Weekly progress assessment
- **Progress Visualization**: Charts and graphs

## 🎨 Design Philosophy

The application follows modern web design principles:
- **Clean, minimalist interface** reducing cognitive load
- **Soft gradients and rounded corners** for a calming aesthetic
- **Responsive design** ensuring mobile compatibility
- **Intuitive navigation** with clear visual hierarchy
- **Accessibility considerations** for inclusive design

## 🔒 Security Features

- **Password hashing** using BCrypt
- **Session management** for user authentication
- **SQL injection prevention** with prepared statements
- **Input validation** on both client and server side
- **XSS protection** through proper output encoding

## 📱 Mobile Responsiveness

The application is fully responsive with:
- **Flexible grid layouts** adapting to screen size
- **Touch-friendly buttons** and interactive elements
- **Optimized typography** for readability
- **Efficient navigation** for mobile users

## 🚀 Future Enhancements

Potential improvements include:
- **Social features** for community support
- **Data export** functionality
- **Advanced analytics** with detailed insights
- **Mobile app** development
- **Integration** with fitness trackers
- **AI-powered** personalized recommendations

## 📄 License

This project is open source and available under the MIT License.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues for bugs and feature requests.

---

**Start your journey to digital wellness today!** 🧠✨