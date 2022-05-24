import 'package:equatable/equatable.dart';
import 'package:go_router/go_router.dart';

import 'presentation/views/home_page/home_page.dart';

GoRouter routerGenerator({String? initialLocation}) {
  return GoRouter(
    initialLocation: initialLocation ?? Routes.root,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.root,
        builder: (context, state) => const MyHomePage(),
      ),
    ],
  );
}

class Routes extends Equatable {
  static const root = '/';

  @override
  List<Object?> get props => [root];
}
