import 'package:go_router/go_router.dart';
import 'package:simple_budget_app/categories/categories_menu.dart';


final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const CategoriesMenuScreen())
]);
