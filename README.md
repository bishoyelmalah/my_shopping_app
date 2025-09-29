# My Shopping App 🛍️

A modern and elegant Flutter shopping application featuring a beautiful user interface, smooth animations, and comprehensive e-commerce functionality.

## � Quick Start

```bash
# Clone the repository
git clone https://github.com/bishoyelmalah/my_shopping_app.git

# Navigate to project directory
cd my_shopping_app

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## �📱 Project Overview

**My Shopping App** is a cross-platform mobile application built with Flutter that provides users with an intuitive shopping experience. The app features a clean, modern design with seamless navigation between different screens and smooth fade transitions.

### App Name: AliMama Shopping

The application serves as a demonstration of modern mobile app development practices, showcasing:
- Responsive UI design
- Form validation
- Navigation with custom transitions
- Product catalog display
- Shopping cart functionality
- Hot offers and deals section

## ✨ Features

### 🎯 Core Features

- **Welcome Screen**: Attractive landing page with branded design
- **User Authentication**: Complete sign-in and sign-up functionality with form validation
- **Home Dashboard**: Comprehensive shopping interface with multiple sections
- **Smooth Transitions**: Custom fade animations between screens for seamless user experience

### 🏠 Home Screen Features

- **AppBar**: Clean "Our Products" header
- **Featured Products Carousel**: Horizontal PageView showcasing featured items
- **Product Grid**: Responsive 2-column grid layout displaying:
  - Product images
  - Product titles
  - Add to Cart functionality with SnackBar feedback
- **Hot Offers Section**: Vertical ListView with 5 promotional offers including:
  - Offer images
  - Detailed descriptions
  - Scrollable interface

### 🔐 Authentication Features

- **Sign In Screen**:
  - Email validation (@ symbol required)
  - Password validation (minimum 6 characters)
  - Success feedback with SnackBar
  - Fade transition to home screen

- **Sign Up Screen**:
  - Full name validation (first letter uppercase)
  - Email validation
  - Password confirmation
  - Secure form handling

### 🎨 UI/UX Features

- **Modern Design**: Clean, professional interface
- **Responsive Layout**: Adapts to different screen sizes
- **Custom Fonts**: Suwannaphum font integration
- **Image Assets**: Organized asset management
- **Bottom Navigation**: Multi-tab navigation (Home, Profile, Settings)
- **Error Handling**: Graceful image loading with fallback icons

## 🚀 Setup Instructions

### Prerequisites

Before running this project, ensure you have the following installed:

- **Flutter SDK**: Version 3.9.2 or higher
- **Dart SDK**: Included with Flutter
- **Android Studio** or **VS Code** with Flutter extensions
- **Git** for version control

### Installation Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/bishoyelmalah/my_shopping_app.git
   cd my_shopping_app
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Verify Flutter Installation**
   ```bash
   flutter doctor
   ```

4. **Run the Application**
   ```bash
   flutter run
   ```

### Running on Different Platforms

#### Android
```bash
flutter run -d android
```

#### iOS (macOS only)
```bash
flutter run -d ios
```

#### Web
```bash
flutter run -d chrome
```

#### Windows
```bash
flutter run -d windows
```

### Taking Screenshots

To capture screenshots of the app:

1. **Run the Application**
   ```bash
   flutter run
   ```

2. **Navigate Through Screens**
   - Start at Welcome Screen
   - Navigate to Sign In/Sign Up screens
   - Complete authentication to reach Home Screen

3. **Capture Screenshots**
   - **Android/iOS**: Use device screenshot functionality
   - **Desktop**: Use system screenshot tools
   - **Programmatically**: Use Flutter's screenshot packages

4. **Organize Screenshots**
   ```bash
   # Create screenshots directory
   mkdir screenshots
   
   # Add screenshots with consistent naming:
   # - welcome_screen.png
   # - signin_screen.png
   # - signup_screen.png
   # - home_screen.png
   # - home_products.png
   # - home_offers.png
   ```

### Building for Production

#### Android APK
```bash
flutter build apk --release
```

#### iOS App (macOS only)
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```

## � Screenshots

The following screenshots showcase the app's functionality across different screens:

### Welcome Screen
![Welcome Screen](screenshots/welcome_screen.png)
*Main landing page with AliMama branding and navigation options*

### Sign In Screen
![Sign In Screen](screenshots/signin_screen.png)
*User authentication form with email and password validation*

### Sign Up Screen
![Sign Up Screen](screenshots/signup_screen.png)
*User registration form with confirmation fields*

### Home Screen
![Home Screen](screenshots/home_screen.png)
*Main shopping interface with featured products, product grid, and hot offers*

### Home Screen - Products Section
![Products Section](screenshots/home_products.png)
*Product grid showing 2-column layout with add to cart functionality*

### Home Screen - Hot Offers
![Hot Offers](screenshots/home_offers.png)
*Scrollable hot offers section with promotional deals*

> **Note**: To capture screenshots of your app, run `flutter run` and use your device's screenshot functionality or Flutter's screenshot tools.

## �📁 Project Structure

```
my_shopping_app/
├── lib/
│   ├── main.dart                 # Application entry point
│   ├── screens/                  # All screen widgets
│   │   ├── welcome_screen.dart   # Landing page
│   │   ├── signin_screen.dart    # User login
│   │   ├── signup_screen.dart    # User registration
│   │   └── home_screen.dart      # Main shopping interface
│   └── utils/                    # Utility classes
│       └── page_transitions.dart # Custom transition animations
├── assets/
│   ├── images/                   # Image resources
│   │   └── image.jpg            # Sample product images
│   └── fonts/                    # Custom fonts
│       └── Suwannaphum.ttf      # Primary app font
├── android/                      # Android-specific files
├── ios/                         # iOS-specific files
├── web/                         # Web-specific files
├── windows/                     # Windows-specific files
├── pubspec.yaml                 # Project dependencies
└── README.md                    # Project documentation
```

## 🛠️ Technologies Used

- **Framework**: Flutter 3.9.2+
- **Language**: Dart
- **UI Components**: Material Design
- **State Management**: StatefulWidget
- **Navigation**: Custom PageRoute with fade transitions
- **Form Validation**: Built-in Flutter validators
- **Asset Management**: Local assets (images, fonts)

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🎯 Key Components

### Custom Page Transitions
- **FadePageRoute**: Smooth fade transitions between screens
- **FadeTransitionHelper**: Utility class for easy navigation

### Screen Components
- **WelcomeScreen**: Brand introduction and navigation
- **SignInScreen**: User authentication with validation
- **SignUpScreen**: User registration with confirmation
- **HomeScreen**: Main shopping interface with products and offers

## 🔄 App Flow

1. **Welcome Screen** → User sees app branding and navigation options
2. **Authentication** → User signs in or signs up with validation
3. **Home Screen** → User browses products and offers with fade transition
4. **Shopping Experience** → Add to cart, view offers, navigate sections

## 📋 Development Notes

### Form Validation Rules
- **Email**: Must contain '@' symbol
- **Password**: Minimum 6 characters
- **Full Name**: First letter must be uppercase
- **Confirm Password**: Must match original password

### Asset Requirements
- **Images**: Place in `assets/images/` directory
- **Fonts**: Place in `assets/fonts/` directory
- **Update**: `pubspec.yaml` when adding new assets

## 🔧 Customization

### Adding New Products
Edit the `products` list in `home_screen.dart`:
```dart
final List<Map<String, dynamic>> products = [
  {'title': 'Your Product', 'image': 'assets/images/your_image.jpg'},
  // Add more products...
];
```

### Adding New Offers
Edit the `hotOffers` list in `home_screen.dart`:
```dart
final List<Map<String, dynamic>> hotOffers = [
  {
    'image': 'assets/images/offer_image.jpg',
    'description': 'Your offer description',
  },
  // Add more offers...
];
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a Pull Request

## � Troubleshooting

### Common Issues

**Issue**: `flutter pub get` fails
- **Solution**: Ensure Flutter SDK is properly installed and PATH is set

**Issue**: App doesn't run on device
- **Solution**: Check device connection with `flutter devices`

**Issue**: Build errors on iOS
- **Solution**: Run `cd ios && pod install` then try again (macOS only)

**Issue**: Assets not loading
- **Solution**: Ensure assets are declared in `pubspec.yaml` and exist in correct paths

**Issue**: Font not displaying correctly
- **Solution**: Verify font files are in `assets/fonts/` and declared in `pubspec.yaml`

### Debug Commands

```bash
# Check Flutter installation
flutter doctor

# List available devices
flutter devices

# Run with verbose logging
flutter run -v

# Clean build files
flutter clean
flutter pub get

# Analyze code for issues
flutter analyze
```

## �📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

**Bishoy Elmalah**
- GitHub: [@bishoyelmalah](https://github.com/bishoyelmalah)

## 📞 Support

For support and questions, please open an issue in the GitHub repository.

---

*Built with ❤️ using Flutter*
