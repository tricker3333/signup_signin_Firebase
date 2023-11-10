// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDlmNV9LGKA6uaxbBjnIELEB4rfdgVCX0I',
    appId: '1:692548939148:web:1bd3ed22b4554192447aa9',
    messagingSenderId: '692548939148',
    projectId: 'sloginf-66d09',
    authDomain: 'sloginf-66d09.firebaseapp.com',
    storageBucket: 'sloginf-66d09.appspot.com',
    measurementId: 'G-9JGXL3WDPR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8amjPbd3sylW-GFwH0hYQCMlnPz4bmWE',
    appId: '1:692548939148:android:a0f807726724dd90447aa9',
    messagingSenderId: '692548939148',
    projectId: 'sloginf-66d09',
    storageBucket: 'sloginf-66d09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVXJGUfJyUJ9Ihv2S1aZHS0dXW7orge5M',
    appId: '1:692548939148:ios:c00f37992c6f60d9447aa9',
    messagingSenderId: '692548939148',
    projectId: 'sloginf-66d09',
    storageBucket: 'sloginf-66d09.appspot.com',
    iosBundleId: 'com.example.simpleLogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVXJGUfJyUJ9Ihv2S1aZHS0dXW7orge5M',
    appId: '1:692548939148:ios:5e89602698e95e79447aa9',
    messagingSenderId: '692548939148',
    projectId: 'sloginf-66d09',
    storageBucket: 'sloginf-66d09.appspot.com',
    iosBundleId: 'com.example.simpleLogin.RunnerTests',
  );
}
