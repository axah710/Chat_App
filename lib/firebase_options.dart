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
    apiKey: 'AIzaSyC_E4lEc9xwejiAq67UX54QIqmzDRGEUS4',
    appId: '1:969546930187:web:848e14e781d35388490f0e',
    messagingSenderId: '969546930187',
    projectId: 'chatapp-2ca65',
    authDomain: 'chatapp-2ca65.firebaseapp.com',
    storageBucket: 'chatapp-2ca65.appspot.com',
    measurementId: 'G-7ZQQWHF45M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-xjQ6T2ZjCi9_f_qkRsa7Q89D3CRXRjI',
    appId: '1:969546930187:android:4c3230137140e6c4490f0e',
    messagingSenderId: '969546930187',
    projectId: 'chatapp-2ca65',
    storageBucket: 'chatapp-2ca65.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArPRvb0ZQPAZdoZMLw0i-t3eDr2KNFYFc',
    appId: '1:969546930187:ios:58fc05204dbb923f490f0e',
    messagingSenderId: '969546930187',
    projectId: 'chatapp-2ca65',
    storageBucket: 'chatapp-2ca65.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArPRvb0ZQPAZdoZMLw0i-t3eDr2KNFYFc',
    appId: '1:969546930187:ios:ecbd4c0de0efb615490f0e',
    messagingSenderId: '969546930187',
    projectId: 'chatapp-2ca65',
    storageBucket: 'chatapp-2ca65.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
