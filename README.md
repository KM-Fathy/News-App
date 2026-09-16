# 📰 NewsCloud

**NewsCloud** is a clean, modern, and responsive news application built with **Flutter** and **Dart**. It provides users with real-time news headlines and updates organized across multiple distinct categories, complete with high-resolution imagery, asynchronous data fetching, and dedicated error/loading states.

---

## 📱 App Previews

| Home Feed | Category Screen |
| :---: | :---: |
| <img width="1263" height="2645" alt="Home_Page" src="https://github.com/user-attachments/assets/79de506c-65de-480f-aa79-854fca645046" width="320"/> | <img width="1263" height="2655" alt="Category_Page" src="https://github.com/user-attachments/assets/6ba9d814-645d-46cf-ab5a-87557ff6bc37" /> |

---

## ✨ Features

* **Real-Time News Stream**: Fetches the latest global headlines with titles, descriptions, and banner images.
* **Interactive Category Carousel**: Horizontal scrollable categories on the home screen for quick topic selection.
* **Dedicated Category Views**: Filtered news feeds allowing deep dives into specialized topics.
* **Resilient State Handling**: Dedicated widgets for both asynchronous loading indicators and network/data fetch error states.
* **Clean Codebase Structure**: Decoupled architecture separating data models, API services, presentation views, and reusable custom widgets.

---

## 🏷️ News Categories

The app supports dedicated browsing across seven key news sectors:

* 💼 **Business**
* 🎬 **Entertainment**
* 🌐 **General**
* 🩺 **Health**
* 🔬 **Science**
* ⚽ **Sports**
* 💻 **Technology**

---

## 📂 Project Architecture

The `lib` directory follows a modular layout designed for scalability:

```text
lib/
│
├── models/
│   ├── article_model.dart          # Data model for individual news articles
│   └── catergory_model.dart        # Model definition for category items
│
├── services/
│   └── news_service.dart           # API service handling network requests
│
├── views/
│   ├── category_view.dart          # Screen displaying articles for a selected category
│   └── home_view.dart              # Main landing screen with categories & general feed
│
├── widgets/
│   ├── categories_list_view.dart   # Horizontal list container for category items
│   ├── category_card.dart          # UI card widget representing an individual category
│   ├── error_message.dart          # Fallback display widget for API/network errors
│   ├── loading_indicator.dart      # Progress spinner displayed while fetching data
│   ├── news_list_view.dart         # Scrollable list displaying news tiles
│   ├── news_list_view_builder.dart # Asynchronous builder handling loading & data states
│   └── news_tile.dart              # Individual card UI displaying article details
│
└── main.dart                       # Entry point of the application
```

---

## 🚀 Getting Started

Follow these steps to set up and run NewsCloud locally.

### 1. Prerequisites

* [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.0.0 or higher recommended)
* [Dart SDK](https://dart.dev/get-dart)
* An IDE such as [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)
* An active device or emulator (Android / iOS)

### 2. Clone the Repository

```bash
git clone [https://github.com/your-username/newscloud.git](https://github.com/your-username/newscloud.git)
cd newscloud
```

### 3. Install Dependencies

Fetch all necessary packages using the Flutter CLI:

```bash
flutter pub get
```

### 4. Configure API Key

If your `news_service.dart` requires an API key (e.g., from [NewsAPI](https://newsapi.org/)):

1. Open `lib/services/news_service.dart`.
2. Locate the base URL or API key field and replace it with your credentials:
   ```dart
   final String apiKey = 'YOUR_API_KEY_HERE';
   ```

### 5. Run the Application

Launch the app on your connected device or emulator:

```bash
flutter run
```

---

## 🛠️ Built With

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)
* **Networking:** HTTP / REST API integration
