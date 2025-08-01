// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAVlX0m2v0QekzUrHf80_BWgV9AcV2b5dg',
    appId: '1:56406798360:web:9c711ae080bee5c547d36d',
    messagingSenderId: '56406798360',
    projectId: 'habit-track-app-defda',
    authDomain: 'habit-track-app-defda.firebaseapp.com',
    storageBucket: 'habit-track-app-defda.firebasestorage.app',
    measurementId: 'G-6GRV4G2XZC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSI5gomifkdlr3larhu9GAHlPdhDGC6P8',
    appId: '1:56406798360:android:7650dd074cb624e147d36d',
    messagingSenderId: '56406798360',
    projectId: 'habit-track-app-defda',
    storageBucket: 'habit-track-app-defda.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAaW3z177wsafWnJhO58xRJgunI06zZbs',
    appId: '1:56406798360:ios:0ed800538e6f78e147d36d',
    messagingSenderId: '56406798360',
    projectId: 'habit-track-app-defda',
    storageBucket: 'habit-track-app-defda.firebasestorage.app',
    iosClientId: '56406798360-ic8uonm0s2g6i2nhkv4on4ura8tjrvas.apps.googleusercontent.com',
    iosBundleId: 'com.example.habitTrackerMvp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAaW3z177wsafWnJhO58xRJgunI06zZbs',
    appId: '1:56406798360:ios:0ed800538e6f78e147d36d',
    messagingSenderId: '56406798360',
    projectId: 'habit-track-app-defda',
    storageBucket: 'habit-track-app-defda.firebasestorage.app',
    iosClientId: '56406798360-ic8uonm0s2g6i2nhkv4on4ura8tjrvas.apps.googleusercontent.com',
    iosBundleId: 'com.example.habitTrackerMvp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAVlX0m2v0QekzUrHf80_BWgV9AcV2b5dg',
    appId: '1:56406798360:web:c5836c6d25179edd47d36d',
    messagingSenderId: '56406798360',
    projectId: 'habit-track-app-defda',
    authDomain: 'habit-track-app-defda.firebaseapp.com',
    storageBucket: 'habit-track-app-defda.firebasestorage.app',
    measurementId: 'G-NZ2J2TP23S',
  );
}
