# 🛒 MiniMart UI - Flutter Implementation

This repository contains the **UI implementation and state management** logic for the **MiniMart App**, a sleek and modern e-commerce application built using **Flutter**. It focuses solely on the frontend structure, state management using `BLoC`, and navigation.

---

## 📱 Screens Implemented

- Home
- Product Details
- Cart
- Category Listings
- Checkout Summary
- Search & Filter
- Favorites

---

## ⚙️ Tech Stack

| Layer              | Tool / Library       |
|--------------------|----------------------|
| UI Framework       | Flutter              |
| State Management   | BLoC                 |
| Navigation         | GetX (`Get.to()`)    |
| Notifications      | GetX Snackbar / Toast |
| Icons              | Custom SVGs / HugeIcon Fonts |
| Font               | Google Font (Fallback) |

> ⚠️ Note: A part in the design originally used `SF Pro Text`, which is a proprietary Apple font and not available via Google Fonts. As a result, the default UI font `IBM Plex Sans` is used in this build.

---

## 📁 Project Structure

```
lib/
├── bloc/            # BLoC files (events, states, blocs)
├── common/          # Shared models, utilities, and mock data
├── screens/         # App pages/screens
├── util/            # Utilities, helpers, and design system files
│   ├── constants/
│   ├── devices/
│   ├── theme/
├── widgets/         # Reusable UI components
├── app.dart         # App root widget
├── main.dart        # App entry point
└── navigation_menu.dart # Landing navigation route
```

## 📦 Dependencies

Key packages used:

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)
- [`get`](https://pub.dev/packages/get)
- [`flutter_svg`](https://pub.dev/packages/flutter_svg)

---

## 💡 Notes

- **State Management**: The UI uses `flutter_bloc` for handling all interactive state (e.g., cart actions, product quantity updates).
- **Navigation**: All navigation is powered by GetX for simplicity and flexibility.
- **Notifications**: Toast messages and snackbars also rely on GetX utilities.
- **Data Layer**: This repo contains mock data only — no backend or API integration is present.
- **UI Only**: This repo is focused on frontend logic. Business logic, authentication, and other logic will be implemented separately.

---

## 🚀 Getting Started

```bash
git clone https://github.com/your-username/minimart.git
cd minimart
flutter pub get
flutter run
📝 License
This project is licensed under the MIT License. See the LICENSE file for details.
```

---


## 👨‍💻 Author
Developed by [David Olanite]

Contact: olaniteolanight@gmail.com

