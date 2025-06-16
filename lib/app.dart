import 'package:flutter/material.dart';
import 'package:unbaiqskillapp/screens/auth/login_screen.dart';
import 'package:unbaiqskillapp/screens/auth/profile_card_screen.dart';
import 'package:unbaiqskillapp/screens/auth/register_screen.dart';
import 'package:unbaiqskillapp/screens/counter/counter_screen.dart';
import 'package:unbaiqskillapp/screens/home/bottom_nav_screen.dart';
import 'package:unbaiqskillapp/screens/listview/product_list_screen.dart';
import 'package:unbaiqskillapp/screens/tab_navigation/tab_navigation_screen.dart';
import 'package:unbaiqskillapp/screens/todo/todo_screen.dart';
import 'package:unbaiqskillapp/screens/user/user_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unbaiq Skill Task',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/profile': (context) => const ProfileCardScreen(),
        '/bottom-nav': (context) => const BottomNavScreen(),
        '/counter': (context) => const CounterScreen(),
        '/products': (context) => const ProductListScreen(),
        '/tabs': (context) => const TabNavigationScreen(),
        '/user': (context) => const UserScreen(),
        '/todo': (context) => const TodoScreen(),
      },
    );
  }
}
