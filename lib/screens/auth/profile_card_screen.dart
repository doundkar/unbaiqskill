import 'package:flutter/material.dart';
import 'package:unbaiqskillapp/services/services.dart';

class ProfileCardScreen extends StatefulWidget {
  const ProfileCardScreen({super.key});

  @override
  State<ProfileCardScreen> createState() => _ProfileCardScreenState();
}

class _ProfileCardScreenState extends State<ProfileCardScreen> {
  final authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Theme.of(context).appBarTheme.backgroundColor,
                  ),
                ),
                const SizedBox(height: 16),
                ListTile(
                  title: Text(authService.currentUser!.displayName!),
                  subtitle: Text(authService.currentUser!.email!),
                ),
                const ListTile(
                  title: Text('Phone'),
                  subtitle: Text('1234567890'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
