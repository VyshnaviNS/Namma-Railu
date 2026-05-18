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

## Open In Android Studio

1. Open Android Studio.
2. Choose **Open**.
3. Select this folder: `C:\Users\Harish\OneDrive\Documents\New project\namma railu`.
4. Let Gradle sync.
5. Run the `app` configuration or build the APK.

## Build APK

Run:

```powershell
set JAVA_HOME=C:\Program Files\Android\Android Studio\jbr
.\gradlew.bat assembleDebug
```

The APK will be created at:

```text
app\build\outputs\apk\debug\app-debug.apk
```

For convenience, a ready APK is also copied to:

```text
namma-railu-debug.apk
```

Install on a connected Android phone:

```powershell
.\install-apk.bat
```

Allow location and notification permissions when prompted. Use **Demo Trigger at 4.8 km** on the Alarm screen for classroom testing without travelling.
