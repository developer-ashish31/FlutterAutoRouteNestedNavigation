// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i4;
import 'package:flutter/material.dart' as _i13;

import '../nested_routes_pages/dashboard_page.dart' as _i1;
import '../nested_routes_pages/login/login_page.dart' as _i2;
import '../nested_routes_pages/posts/post_page.dart' as _i6;
import '../nested_routes_pages/posts/postCategory/CategoryAPage.dart' as _i8;
import '../nested_routes_pages/posts/postCategory/CategoryBPage.dart' as _i9;
import '../nested_routes_pages/posts/single_post_page.dart' as _i7;
import '../nested_routes_pages/settings/settings_page.dart' as _i5;
import '../nested_routes_pages/splash_page.dart' as _i3;
import '../nested_routes_pages/users/user_page.dart' as _i10;
import '../nested_routes_pages/users/user_profile_page.dart' as _i11;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    LoginRouter.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
        transitionsBuilder: _i12.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    PostRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    UserRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    SettingRouter.name: (routeData) {
      final args = routeData.argsAs<SettingRouterArgs>(
          orElse: () => const SettingRouterArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SettingPage(key: args.key),
      );
    },
    PostRoute.name: (routeData) {
      final args =
          routeData.argsAs<PostRouteArgs>(orElse: () => const PostRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.PostPage(key: args.key),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    CategoryRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    CategoryARoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.CategoryAPage(),
      );
    },
    CategoryBRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CategoryBPage(),
      );
    },
    UserRoute.name: (routeData) {
      final args =
          routeData.argsAs<UserRouteArgs>(orElse: () => const UserRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.UserPage(key: args.key),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          DashboardRoute.name,
          path: '/',
          children: [
            _i12.RouteConfig(
              PostRouter.name,
              path: 'posts',
              parent: DashboardRoute.name,
              children: [
                _i12.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: PostRouter.name,
                  redirectTo: 'postPage',
                  fullMatch: true,
                ),
                _i12.RouteConfig(
                  PostRoute.name,
                  path: 'postPage',
                  parent: PostRouter.name,
                ),
                _i12.RouteConfig(
                  SinglePostRoute.name,
                  path: 'single-post-page',
                  parent: PostRouter.name,
                ),
                _i12.RouteConfig(
                  CategoryRoute.name,
                  path: 'category',
                  parent: PostRouter.name,
                  children: [
                    _i12.RouteConfig(
                      CategoryARoute.name,
                      path: '',
                      parent: CategoryRoute.name,
                    ),
                    _i12.RouteConfig(
                      CategoryBRoute.name,
                      path: 'categoryB',
                      parent: CategoryRoute.name,
                    ),
                  ],
                ),
              ],
            ),
            _i12.RouteConfig(
              UserRouter.name,
              path: 'users',
              parent: DashboardRoute.name,
              children: [
                _i12.RouteConfig(
                  UserRoute.name,
                  path: '',
                  parent: UserRouter.name,
                ),
                _i12.RouteConfig(
                  UserProfileRoute.name,
                  path: 'user-profile-page',
                  parent: UserRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              SettingRouter.name,
              path: 'settings',
              parent: DashboardRoute.name,
            ),
          ],
        ),
        _i12.RouteConfig(
          LoginRouter.name,
          path: 'login',
        ),
        _i12.RouteConfig(
          SplashRoute.name,
          path: '/splashPage',
        ),
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRouter extends _i12.PageRouteInfo<void> {
  const LoginRouter()
      : super(
          LoginRouter.name,
          path: 'login',
        );

  static const String name = 'LoginRouter';
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splashPage',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class PostRouter extends _i12.PageRouteInfo<void> {
  const PostRouter({List<_i12.PageRouteInfo>? children})
      : super(
          PostRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class UserRouter extends _i12.PageRouteInfo<void> {
  const UserRouter({List<_i12.PageRouteInfo>? children})
      : super(
          UserRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UserRouter';
}

/// generated route for
/// [_i5.SettingPage]
class SettingRouter extends _i12.PageRouteInfo<SettingRouterArgs> {
  SettingRouter({_i13.Key? key})
      : super(
          SettingRouter.name,
          path: 'settings',
          args: SettingRouterArgs(key: key),
        );

  static const String name = 'SettingRouter';
}

class SettingRouterArgs {
  const SettingRouterArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SettingRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.PostPage]
class PostRoute extends _i12.PageRouteInfo<PostRouteArgs> {
  PostRoute({_i13.Key? key})
      : super(
          PostRoute.name,
          path: 'postPage',
          args: PostRouteArgs(key: key),
        );

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.SinglePostPage]
class SinglePostRoute extends _i12.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i13.Key? key,
    required int postId,
  }) : super(
          SinglePostRoute.name,
          path: 'single-post-page',
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
        );

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i13.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i4.EmptyRouterPage]
class CategoryRoute extends _i12.PageRouteInfo<void> {
  const CategoryRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          path: 'category',
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i8.CategoryAPage]
class CategoryARoute extends _i12.PageRouteInfo<void> {
  const CategoryARoute()
      : super(
          CategoryARoute.name,
          path: '',
        );

  static const String name = 'CategoryARoute';
}

/// generated route for
/// [_i9.CategoryBPage]
class CategoryBRoute extends _i12.PageRouteInfo<void> {
  const CategoryBRoute()
      : super(
          CategoryBRoute.name,
          path: 'categoryB',
        );

  static const String name = 'CategoryBRoute';
}

/// generated route for
/// [_i10.UserPage]
class UserRoute extends _i12.PageRouteInfo<UserRouteArgs> {
  UserRoute({_i13.Key? key})
      : super(
          UserRoute.name,
          path: '',
          args: UserRouteArgs(key: key),
        );

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.UserProfilePage]
class UserProfileRoute extends _i12.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i13.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: 'user-profile-page',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i13.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
