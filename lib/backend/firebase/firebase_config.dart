import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-7CF-g-Qjo4TW-z7GIYJERCnWEidRAbI",
            authDomain: "test-ed0b8.firebaseapp.com",
            projectId: "test-ed0b8",
            storageBucket: "test-ed0b8.appspot.com",
            messagingSenderId: "813204248047",
            appId: "1:813204248047:web:acb3f05414d193a698921a"));
  } else {
    await Firebase.initializeApp();
  }
}
