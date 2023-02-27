import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_route/nested_routes_pages/data/app_data.dart';
import 'package:nested_route/nested_routes_pages/widgets/post_tile.dart';
import 'package:nested_route/routes/app_router.gr.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);
  final posts = Post.posts;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < posts.length; i++)
              PostTile(
                  tileColor: posts[i].color,
                  postTitle: posts[i].title,
                  onTileTap: () {
                    context.pushRoute(SinglePostRoute(
                      postId: posts[i].id,
                    ));
                    /*context.router.push(
                      SinglePostRoute(
                        postId: posts[i].id,
                      ),
                    );*/
                  }),
          ],
        ),
      ),
    );
  }
}

// context.navigateTo(SinglePostRoute(postId: posts[i].id));
