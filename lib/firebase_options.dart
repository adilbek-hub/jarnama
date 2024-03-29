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
    apiKey: 'AIzaSyA7dA6s5sgOqsPTmTddqOTFLENPJ_pgRCQ',
    appId: '1:646353721073:web:9c5cb9c9d20532aa2dfb50',
    messagingSenderId: '646353721073',
    projectId: 'jarnama-example-b4eee',
    authDomain: 'jarnama-example-b4eee.firebaseapp.com',
    storageBucket: 'jarnama-example-b4eee.appspot.com',
    measurementId: 'G-EFDBG19P6E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVNqf8q3hTPqrqMD-07RAleZp9GLVprkg',
    appId: '1:646353721073:android:33c5906905098e522dfb50',
    messagingSenderId: '646353721073',
    projectId: 'jarnama-example-b4eee',
    storageBucket: 'jarnama-example-b4eee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeM4JSqGIgr6m4qcLsq7Sphq4spMr9GAw',
    appId: '1:646353721073:ios:e44e32a7ab206eec2dfb50',
    messagingSenderId: '646353721073',
    projectId: 'jarnama-example-b4eee',
    storageBucket: 'jarnama-example-b4eee.appspot.com',
    iosClientId: '646353721073-ofupgdotr3a98mr6ap0idiaa9vfcdadn.apps.googleusercontent.com',
    iosBundleId: 'com.example.jarnama',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeM4JSqGIgr6m4qcLsq7Sphq4spMr9GAw',
    appId: '1:646353721073:ios:e44e32a7ab206eec2dfb50',
    messagingSenderId: '646353721073',
    projectId: 'jarnama-example-b4eee',
    storageBucket: 'jarnama-example-b4eee.appspot.com',
    iosClientId: '646353721073-ofupgdotr3a98mr6ap0idiaa9vfcdadn.apps.googleusercontent.com',
    iosBundleId: 'com.example.jarnama',
  );
}
