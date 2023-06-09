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
    apiKey: 'AIzaSyCdMw8MXPtz6vXJpbrkGvRu6tpVokn3vyE',
    appId: '1:396402162585:web:7fb3cd9923429426d2b108',
    messagingSenderId: '396402162585',
    projectId: 'solar-85e1c',
    authDomain: 'solar-85e1c.firebaseapp.com',
    storageBucket: 'solar-85e1c.appspot.com',
    measurementId: 'G-LWS44DGVXB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1J6xizqBGLXnpViwux9PuTD2ZhJjEnJk',
    appId: '1:396402162585:android:01cf9f430ab56465d2b108',
    messagingSenderId: '396402162585',
    projectId: 'solar-85e1c',
    storageBucket: 'solar-85e1c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCU_QuMVTK0IAmPGSgk1ZHGKC-hlQT24OU',
    appId: '1:396402162585:ios:1a52bf92c0440882d2b108',
    messagingSenderId: '396402162585',
    projectId: 'solar-85e1c',
    storageBucket: 'solar-85e1c.appspot.com',
    iosClientId: '396402162585-l8puun3ppa65t9g17kabm4t2hikk11cj.apps.googleusercontent.com',
    iosBundleId: 'com.example.newAge',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCU_QuMVTK0IAmPGSgk1ZHGKC-hlQT24OU',
    appId: '1:396402162585:ios:1a52bf92c0440882d2b108',
    messagingSenderId: '396402162585',
    projectId: 'solar-85e1c',
    storageBucket: 'solar-85e1c.appspot.com',
    iosClientId: '396402162585-l8puun3ppa65t9g17kabm4t2hikk11cj.apps.googleusercontent.com',
    iosBundleId: 'com.example.newAge',
  );
}
