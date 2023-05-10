import 'package:flutter_skill_connect_test/view/home/bindings/home_binding.dart';
import 'package:flutter_skill_connect_test/view/home/views/home_view.dart';
import 'package:get/route_manager.dart';

class AppRouter {
  static String initialRoute = HomeView.routeName;
  static List<GetPage> get pages => [
        GetPage(
          name: HomeView.routeName,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ];
}
