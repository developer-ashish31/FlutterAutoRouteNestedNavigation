import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile(
      {Key? key,
      required this.postTitle,
      required this.tileColor,
      required this.onTileTap})
      : super(key: key);

  final String postTitle;
  final Color tileColor;
  final void Function() onTileTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Card(
        margin: const EdgeInsets.only(bottom: 20),
        color: tileColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Text(
                postTitle,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Today we reveal the findings of our 2-year investigation, '
                'presenting evidence that the INR 17.8 trillion (U.S. '
                'Doller 218 billion)'
                ' Indian conglomerate Adani Group has engaged in a brazen '
                'stock manipulation and accounting fraud scheme over the '
                'course of decades.',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
