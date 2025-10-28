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
  ],
);
