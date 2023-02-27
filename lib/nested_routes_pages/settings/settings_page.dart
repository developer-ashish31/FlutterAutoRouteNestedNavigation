import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_route/nested_routes_pages/data/app_data.dart';
import 'package:nested_route/routes/app_router.gr.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  final users = User.users;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const Card(
            margin: EdgeInsets.only(
              top: 30,
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 30,
              ),
              child: Text(
                '''User234
user234@email.com''',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            child: const Text('Go To Login Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w600)),
            onPressed: () {
              context.navigateTo(const LoginRouter());
            },
          ),
        ],
      ),
    );
  }
}
