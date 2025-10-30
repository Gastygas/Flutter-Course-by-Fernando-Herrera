import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: HomeScreen.name, 
      path: '/', 
      builder: (context, state) => HomeScreen()
      ),

    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons', 
      builder: (context, state) => ButtonsScreen()
      ),
      
    GoRoute(
      name: CardsScreen.name,
      path: '/cards', 
      builder: (context, state) => CardsScreen()
      ),

    GoRoute(
      name: ProgressScreen.name,
      path: '/progress', 
      builder: (context, state) => ProgressScreen()
      ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbar', 
      builder: (context, state) => SnackbarScreen()
      ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated', 
      builder: (context, state) => AnimatedScreen()
      ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui-controls', 
      builder: (context, state) => UiControlsScreen()
      ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/tutorial', 
      builder: (context, state) => AppTutorialScreen()
      ),
    GoRoute(
      name: InfiniteScrollScreen.name,
      path: '/infinite', 
      builder: (context, state) => InfiniteScrollScreen()
      ),
    GoRoute(
      name: CounterScreen.name,
      path: '/counter-screen', 
      builder: (context, state) => CounterScreen()
      ),
    GoRoute(
      name: ThemeChangerScreen.name,
      path: '/theme-changer', 
      builder: (context, state) => ThemeChangerScreen()
      ),
  ],
);
