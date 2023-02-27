import 'package:flutter/material.dart';
import 'package:nested_route/nested_routes_pages/data/app_data.dart';
import 'package:nested_route/nested_routes_pages/widgets/user_avatar.dart';

class UserProfilePage extends StatelessWidget {
  final int userId;

  const UserProfilePage({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = User.users[userId - 1];
    return Scaffold(
      backgroundColor: user.color,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('User Id: ${user.id}',
                  style: Theme.of(context).textTheme.headline2),
              const SizedBox(height: 20),
              UserAvatar(
                avatarColor: Colors.white,
                userName: 'user${user.id}',
              )
              // Text(post., style: Theme.of(context).textTheme.headline3),
            ],
          ),
        ),
      ),
    );
  }
}
