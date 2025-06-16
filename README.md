# unbaiqskill
Features by Section
### Section 1: Basic UI & Layout
- Login Screen

- Email & password fields with basic "not empty" validation.

- Login, Register buttons, and "Forgot Password?" text.

- Profile Card

- Shows profile image (CircleAvatar with fallback icon).

- Displays name, email, and phone number.

### Section 2: Navigation & State Management
- BottomNavigationBar with Home, Profile, Settings screens.

- Counter app: Increment/decrement count using setState.

### Section 3: Intermediate Widgets & Lists
- Custom ListView with product cards (image, title, subtitle, price).

- Shows SnackBar or navigates to detail page on tap.

- TabBar: Latest News, Trending, Profile tabs.

### Section 4: Firebase Integration
- Authentication

- Register & login with email/password.

- Error handling and logout option.

- Firestore CRUD

- Add user (name + city).

- View all users in a list with delete option.

### Section 5: Capstone Project
Todo App

- Firebase login.

- Add, delete, mark tasks as complete/incomplete.

📂 Project Structure

lib/
 ┣ main.dart                 // Entry point
 ┣ app.dart                  // App theme, routes
 ┣ screens/                   // All app screens
 ┃ ┣ auth/                   // Login, register, forgot password
 ┃ ┣ profile/                // Profile card
 ┃ ┣ home/                   // Home screen
 ┃ ┣ settings/               // Settings screen
 ┃ ┣ counter/                // Counter app
 ┃ ┣ listview/               // Product list
 ┃ ┣ tab_navigation/         // TabBar screen
 ┃ ┣ todo/                   // Todo app
 ┃ ┗ splash_screen.dart
 ┣ widgets/                   // Reusable widgets
 ┣ models/                    // Data models
 ┣ services/                  // Firebase services


### ⚙️ How to Run
1️⃣ Clone this repo:

git clone https://github.com/your-github-repo-link

2️⃣ Get dependencies:

flutter pub get

3️⃣ Set up Firebase:

Add google-services.json (Android)

Or GoogleService-Info.plist (iOS)

4️⃣ Run app:

flutter run

