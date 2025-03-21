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
    apiKey: 'AIzaSyDZgopcW9ehNYzH3Tok2Q4o92inaB5jC24',
    appId: '1:976137367043:web:794ff7758a5e93e0662836',
    messagingSenderId: '976137367043',
    projectId: 'musica-e52f0',
    authDomain: 'musica-e52f0.firebaseapp.com',
    storageBucket: 'musica-e52f0.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIBJCdzeDem9lKorBVzZVSmW4j-OP32vI',
    appId: '1:976137367043:android:92cf99d366191561662836',
    messagingSenderId: '976137367043',
    projectId: 'musica-e52f0',
    storageBucket: 'musica-e52f0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHyq5qPUfE5BJRFd4qs5M43FrM0jDFW_Y',
    appId: '1:976137367043:ios:743f1fd696f0673b662836',
    messagingSenderId: '976137367043',
    projectId: 'musica-e52f0',
    storageBucket: 'musica-e52f0.firebasestorage.app',
    iosBundleId: 'com.example.firebdExample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDHyq5qPUfE5BJRFd4qs5M43FrM0jDFW_Y',
    appId: '1:976137367043:ios:743f1fd696f0673b662836',
    messagingSenderId: '976137367043',
    projectId: 'musica-e52f0',
    storageBucket: 'musica-e52f0.firebasestorage.app',
    iosBundleId: 'com.example.firebdExample',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDZgopcW9ehNYzH3Tok2Q4o92inaB5jC24',
    appId: '1:976137367043:web:30d82fcdd83a733b662836',
    messagingSenderId: '976137367043',
    projectId: 'musica-e52f0',
    authDomain: 'musica-e52f0.firebaseapp.com',
    storageBucket: 'musica-e52f0.firebasestorage.app',
  );
}
