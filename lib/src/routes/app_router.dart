import 'package:auto_route/auto_route.dart';
import 'package:artes_flutter/src/screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
      ];
}
