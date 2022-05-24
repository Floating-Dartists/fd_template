import 'package:go_router/go_router.dart';

import 'presentation/views/home_page/home_page.dart';

GoRouter routerGenerator({String? initialLocation}) {
  return GoRouter(
    initialLocation: initialLocation ?? AppRoute.root.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: AppRoute.root.name,
        path: AppRoute.root.path,
        builder: (context, state) => const MyHomePage(),
      ),
    ],
  );
}

enum AppRoute {
  root('/');

  final String path;

  const AppRoute(this.path);
}
