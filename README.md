# News App with State Management (BLoC / Cubit) 📰

A modern, responsive Flutter News application built as part of the **EraaSoft Flutter Course (Day 12)**. This project demonstrates clean state management using **Flutter BLoC (Cubit)**, MVVM/Feature-based architecture, real-time news fetching from News API, reactive UI states (Loading, Success, Error), and pull-to-refresh functionality.

---

## ✨ Features

- **State Management with BLoC (Cubit)**: Clean separation of UI and business logic using `flutter_bloc`.
- **Centralized Data Handling**: `HomeCubit` manages the state and holds the data list.
- **Reactive UI States**:
  - **Loading**: Shows smooth circular progress indicator while fetching.
  - **Success**: Displays headlines in a styled scrollable list of cards.
  - **Error & Retry**: Clean error UI with a retry button to re-fetch on failure.
- **Pull-to-Refresh**: Easily refresh headlines using `RefreshIndicator`.
- **Detailed Article View**: Tap any card to navigate to full article details with image, title, and description.
- **REST API Integration**: Live HTTP requests using the `http` package with JSON decoding and null-safety validation.
- **Modern Dark Theme**: Elegant dark mode palette with custom rounded AppBars and cards.

---

## 📁 Project Architecture

```
lib/
├── core/
│   ├── app_dialog/
│   │   └── app_dialog.dart
│   └── app_routes/
│       └── app_routes.dart
├── features/
│   ├── data/
│   │   ├── API/
│   │   │   └── news_api.dart
│   │   └── models/
│   │       └── news_model.dart
│   └── presentation/
│       ├── view_model/
│       │   ├── home_cubit.dart
│       │   └── home_state.dart
│       └── views/
│           ├── screens/
│           │   ├── detail_screen.dart
│           │   └── home_screen.dart
│           └── widgets/
│               └── card.dart
└── main.dart
```

---

## 🛠️ Tech Stack & Dependencies

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **HTTP Client**: [http](https://pub.dev/packages/http)
- **API Provider**: [News API](https://newsapi.org/)

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.13 or newer)
- Dart SDK
- Android Studio / VS Code with Flutter extension

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/day12-news-app.git
   ```

2. **Navigate to the project folder:**
   ```bash
   cd day12
   ```

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the app:**
   ```bash
   flutter run
   ```

---

## 📱 State Management Flow

```
[UI: HomeScreen]
       │
       ▼ (triggers fetchNews)
[HomeCubit] ─── (calls) ───► [NewsApi.fetchNews()]
       │                              │
       ▼ (emits states)               ▼ (returns List<NewsModel>)
[HomeLoadingState / HomeSuccessState / HomeErrorState]
       │
       ▼ (listens & rebuilds)
[BlocBuilder in HomeScreen]
```
