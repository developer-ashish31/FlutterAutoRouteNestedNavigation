import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CategoryBPage extends StatelessWidget {
  const CategoryBPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Category B Post Page',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => _getRouteController(context),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }

  _getRouteController(BuildContext context) {
    final router = AutoRouter.of(context);
    print("Parent Controller of CategoryBPage=> $router");
    print(
        "Parent Routing Controller of this Route=>  ${router.parent<StackRouter>()}");
    print("Root Route Controller=> ${router.root}");
  }
}
