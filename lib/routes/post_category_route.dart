import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:nested_route/nested_routes_pages/posts/postCategory/CategoryAPage.dart';
import 'package:nested_route/nested_routes_pages/posts/postCategory/CategoryBPage.dart';

const categoryPageRoute = AutoRoute(
    path: 'category',
    name: 'CategoryRoute',
    page: EmptyRouterPage,
    children: [
      AutoRoute(path: '', page: CategoryAPage),
      AutoRoute(path: 'categoryB', page: CategoryBPage),
    ]);
