import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:nested_route/nested_routes_pages/dashboard_page.dart';
import 'package:nested_route/nested_routes_pages/login/login_page.dart';
import 'package:nested_route/nested_routes_pages/posts/post_page.dart';
import 'package:nested_route/nested_routes_pages/posts/single_post_page.dart';
import 'package:nested_route/nested_routes_pages/settings/settings_page.dart';
import 'package:nested_route/nested_routes_pages/splash_page.dart';
import 'package:nested_route/nested_routes_pages/users/user_page.dart';
import 'package:nested_route/nested_routes_pages/users/user_profile_page.dart';
import 'package:nested_route/routes/post_category_route.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(path: '/', page: DashboardPage, children: [
    AutoRoute(
        path: 'posts',
        name: 'PostRouter',
        page: EmptyRouterPage,
        children: [
          RedirectRoute(path: '', redirectTo: 'postPage'),
          AutoRoute(path: 'postPage', page: PostPage),
          AutoRoute(page: SinglePostPage),
          categoryPageRoute
        ]),
    AutoRoute(
        path: 'users',
        name: 'UserRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(page: UserPage, initial: true),
          AutoRoute(page: UserProfilePage),
        ]),
    AutoRoute(path: 'settings', name: 'SettingRouter', page: SettingPage),
  ]),
  CustomRoute(
      path: 'login',
      name: 'loginRouter',
      page: LoginPage,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  AutoRoute(
    path: '/splashPage',
    page: SplashPage,
  ),
])
class $AppRouter {}

// RedirectRoute(path: '', redirectTo: 'post-page'),
