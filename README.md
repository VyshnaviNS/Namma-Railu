# Namma Railu Android App

Namma Railu is a Kotlin Android Studio demo app for local train passengers at small stations. It provides live station guidance, coach position, crowdsourced platform confirmations, delay votes, and a 5 km destination wake-up alarm.

## Included Features

- Kotlin `MainActivity`.
- Supports Android 7.0 Nougat and above: `minSdk 24`, `targetSdk 36`.
- Live Station screen with train, platform, confirmation count, delay status, and next stop.
- Coach Position screen with a high-contrast vertical train layout.
- Platform Ping screen where users confirm a platform and see the number of confirmations.
- Delay updates with vote counts.
- Destination Alarm screen using Android GPS/location APIs and a 5 km trigger radius.
- Local SharedPreferences storage so the APK works immediately without Firebase setup.

The Platform Ping repository is intentionally local for the ready-to-run APK. In a production Firebase version, replace the SharedPreferences keys in `MainActivity.kt` with Firebase Realtime Database paths such as `stations/{stationCode}/trains/{trainNumber}/platforms/{platform}/confirmations`.

