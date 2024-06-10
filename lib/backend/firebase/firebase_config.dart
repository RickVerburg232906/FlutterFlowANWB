import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBgsIUMtWxLTWMscFyJARKtV4EraPKQ4pk",
            authDomain: "customer-a-n-w-b-app-j1vp1c.firebaseapp.com",
            projectId: "customer-a-n-w-b-app-j1vp1c",
            storageBucket: "customer-a-n-w-b-app-j1vp1c.appspot.com",
            messagingSenderId: "110074370685",
            appId: "1:110074370685:web:e9b7beff3a8bb6f9522f14"));
  } else {
    await Firebase.initializeApp();
  }
}
