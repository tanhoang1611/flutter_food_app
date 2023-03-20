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
    apiKey: 'AIzaSyA52xMb5z6zqQuVXV8L3Oo555BW8EhILM4',
    appId: '1:967528591832:web:9b08642443a3578ba002ad',
    messagingSenderId: '967528591832',
    projectId: 'food-app-cf927',
    authDomain: 'food-app-cf927.firebaseapp.com',
    storageBucket: 'food-app-cf927.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3bV0XvEtzbk4IZjn9EK2B8K5dwHc18rI',
    appId: '1:967528591832:android:31918ef4b12f8e63a002ad',
    messagingSenderId: '967528591832',
    projectId: 'food-app-cf927',
    storageBucket: 'food-app-cf927.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBt5cbctc4XgT5KlyMDEwJh6fmcn4errRY',
    appId: '1:967528591832:ios:9acdf99a9bfb4a5ba002ad',
    messagingSenderId: '967528591832',
    projectId: 'food-app-cf927',
    storageBucket: 'food-app-cf927.appspot.com',
    iosClientId: '967528591832-vagt87n3igbb9b3hdebvso5pvgvba0ue.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodOrdering',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBt5cbctc4XgT5KlyMDEwJh6fmcn4errRY',
    appId: '1:967528591832:ios:9acdf99a9bfb4a5ba002ad',
    messagingSenderId: '967528591832',
    projectId: 'food-app-cf927',
    storageBucket: 'food-app-cf927.appspot.com',
    iosClientId: '967528591832-vagt87n3igbb9b3hdebvso5pvgvba0ue.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodOrdering',
  );
}
