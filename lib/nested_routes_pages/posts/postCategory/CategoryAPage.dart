import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_route/routes/app_router.gr.dart';

class CategoryAPage extends StatelessWidget {
  const CategoryAPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Category A Post Page',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () => _gotToSettingTab(context),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.teal,
            ),
            child: const Text(
              'Go To Settings Tab',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          ),
          OutlinedButton(
            onPressed: () => _gotToUserProfilePage(context),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.teal,
            ),
            child: const Text(
              'Go To User Profile Page',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
          )
        ]),
      ),
    );
  }
}

void _gotToSettingTab(BuildContext context) {
  context.navigateTo(SettingRouter());
}

void _gotToUserProfilePage(BuildContext context) {
  context.navigateTo(
      UserRouter(children: [UserRoute(), UserProfileRoute(userId: 2)]));
}
