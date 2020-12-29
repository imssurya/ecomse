import 'package:ecomse/pages/signup.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Colors.red.shade900),
      home: SignUp(),
    ),
  );
}
