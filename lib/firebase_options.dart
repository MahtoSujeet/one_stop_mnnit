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
    apiKey: 'AIzaSyDcvdIu5gBwluZMtd1gkty6S0ML25QkcGU',
    appId: '1:987430945819:web:5c8e203ad97951fe3ae4be',
    messagingSenderId: '987430945819',
    projectId: 'one-stop-mnnit',
    authDomain: 'one-stop-mnnit.firebaseapp.com',
    storageBucket: 'one-stop-mnnit.firebasestorage.app',
    measurementId: 'G-YRZ76X5BWK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0RHu-UK5lpJFQs78JLmenSDazpx918CQ',
    appId: '1:987430945819:android:a39f93cc8345da8b3ae4be',
    messagingSenderId: '987430945819',
    projectId: 'one-stop-mnnit',
    storageBucket: 'one-stop-mnnit.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDx0OMYIHteLYJOBhH3kdty0aMePb_oVwU',
    appId: '1:987430945819:ios:0d7e1c855ff212de3ae4be',
    messagingSenderId: '987430945819',
    projectId: 'one-stop-mnnit',
    storageBucket: 'one-stop-mnnit.firebasestorage.app',
    iosBundleId: 'com.example.oneStopMnnit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDx0OMYIHteLYJOBhH3kdty0aMePb_oVwU',
    appId: '1:987430945819:ios:0d7e1c855ff212de3ae4be',
    messagingSenderId: '987430945819',
    projectId: 'one-stop-mnnit',
    storageBucket: 'one-stop-mnnit.firebasestorage.app',
    iosBundleId: 'com.example.oneStopMnnit',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDcvdIu5gBwluZMtd1gkty6S0ML25QkcGU',
    appId: '1:987430945819:web:717b80b6d2b240433ae4be',
    messagingSenderId: '987430945819',
    projectId: 'one-stop-mnnit',
    authDomain: 'one-stop-mnnit.firebaseapp.com',
    storageBucket: 'one-stop-mnnit.firebasestorage.app',
    measurementId: 'G-E86GXN997W',
  );
}