import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQkfsGO-8tjNyGXm0EVY3xb30-RbpFWL8",
            authDomain: "olympus-pass-v2.firebaseapp.com",
            projectId: "olympus-pass-v2",
            storageBucket: "olympus-pass-v2.appspot.com",
            messagingSenderId: "554551833476",
            appId: "1:554551833476:web:443d61cdfdcd481849a3d1",
            measurementId: "G-GCWBPMD1D2"));
  } else {
    await Firebase.initializeApp();
  }
}
