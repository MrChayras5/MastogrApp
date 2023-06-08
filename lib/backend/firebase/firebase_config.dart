import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAmkhPUlq3qAmlXsQGnOfi8M2WzUas-wBc",
            authDomain: "mastograpp-e9ac2.firebaseapp.com",
            projectId: "mastograpp-e9ac2",
            storageBucket: "mastograpp-e9ac2.appspot.com",
            messagingSenderId: "58615565553",
            appId: "1:58615565553:web:a199197b69fc47a6356d50"));
  } else {
    await Firebase.initializeApp();
  }
}
