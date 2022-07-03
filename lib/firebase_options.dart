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
    apiKey: 'AIzaSyCi-pOV7DElfnWI4cBWMNELASkV51zaaL8',
    appId: '1:330399914344:web:0664afbbe01f1929105edd',
    messagingSenderId: '330399914344',
    projectId: 'bmra-b7f75',
    authDomain: 'bmra-b7f75.firebaseapp.com',
    storageBucket: 'bmra-b7f75.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhVTi9MBbVx2Nf0jYCEDlLw0bpyiUK1g4',
    appId: '1:330399914344:android:b0f2916f9d7ce33d105edd',
    messagingSenderId: '330399914344',
    projectId: 'bmra-b7f75',
    storageBucket: 'bmra-b7f75.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhF1Dko930r9rROse_qF_HpF6yB-AWNgA',
    appId: '1:330399914344:ios:01e8e647cc992106105edd',
    messagingSenderId: '330399914344',
    projectId: 'bmra-b7f75',
    storageBucket: 'bmra-b7f75.appspot.com',
    iosClientId: '330399914344-03a15p0hrdf0j3pt5ng990ub8tqn1bm7.apps.googleusercontent.com',
    iosBundleId: 'com.example.bmra',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDhF1Dko930r9rROse_qF_HpF6yB-AWNgA',
    appId: '1:330399914344:ios:01e8e647cc992106105edd',
    messagingSenderId: '330399914344',
    projectId: 'bmra-b7f75',
    storageBucket: 'bmra-b7f75.appspot.com',
    iosClientId: '330399914344-03a15p0hrdf0j3pt5ng990ub8tqn1bm7.apps.googleusercontent.com',
    iosBundleId: 'com.example.bmra',
  );
}
