import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_route/nested_routes_pages/data/app_data.dart';
import 'package:nested_route/routes/app_router.gr.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({
    Key? key,
    required this.postId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = Post.posts[postId - 1];
    return Scaffold(
      backgroundColor: post.color,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                post.title,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Today we reveal the findings of our 2-year investigation, '
                'presenting evidence that the INR 17.8 trillion (U.S. '
                'Doller 218 billion)'
                ' Indian conglomerate Adani Group has engaged in a brazen '
                'stock manipulation and accounting fraud scheme over the '
                'course of decades.',
                textAlign: TextAlign.center,
              ),
              TextButton(
                child: const Text('CategoryA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
                onPressed: () {
                  context.navigateTo(
                      const CategoryRoute(children: [CategoryARoute()]));
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                child: const Text('CategoryB',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
                onPressed: () {
                  context.navigateTo(
                      const CategoryRoute(children: [CategoryBRoute()]));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
