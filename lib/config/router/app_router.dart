import 'package:go_router/go_router.dart';
import 'package:school_app/features/auth/presentation/screen/login_screen.dart';
import 'package:school_app/features/tutor/presentation/screen/home_screen.dart';
import 'package:school_app/features/tutor/presentation/screen/tipo_nota_creen.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  ///* Auth Routes
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/home/:page',
    name: HomeScreen.name,
    builder: (context, state) {
      final pageIndex = int.parse(state.pathParameters['page'] ?? '0');

      return HomeScreen(pageIndex: pageIndex);
    },
    // routes: [
    //   GoRoute(
    //     path: 'movie/:id',
    //     name: MovieScreen.name,
    //     builder: (context, state) {
    //       final movieId = state.params['id'] ?? 'no-id';

    //       return MovieScreen(movieId: movieId);
    //     },
    //   ),
    // ]
  ),
  GoRoute(
    path: '/tipo-nota',
    builder: (context, state) => const TipoNotaScreen(),
  ),

  GoRoute(
    path: '/',
    redirect: (_, __) => '/home/0',
  ),
]);
