import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:unbaiqskillapp/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDunyqjpFy23Gt3_7a0fxQ0-mhRN7N5r30",
      appId: "1:384572773670:android:faa86fe4a1e8e7cd139de7",
      messagingSenderId: "384572773670",
      projectId: "todo-a24fa",
    ),
  );
  runApp(const MyApp());
}
