import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/page/edit_page/bindings/edit_page_binding.dart';
import 'package:todo_app/features/home/presentation/page/selected/controller/selected_page_controller.dart';

import 'features/home/presentation/bindings/home_binding.dart';
import 'features/home/presentation/home.dart';
import 'features/home/presentation/page/all/all_page.dart';
import 'features/home/presentation/page/all/bindings/all_page_binding.dart';
import 'features/home/presentation/page/edit_page/edit_page_view.dart';
import 'features/home/presentation/page/selected/bindings/selected_binding.dart';
import 'features/home/presentation/page/selected/selected_page_view.dart';
import 'features/home/presentation/page/unselected/bindings/unselected_page_binding.dart';
import 'features/home/presentation/page/unselected/unselected_page_view.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String allpage = '/all_page';
  static const String selected_page = '/selected_page';
  static const String unselected_page = '/unselected_page';
  static const String edit_page = '/edit_page';
  static final routes = [
    GetPage(
      name: home,
      page: () => HomePageView(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: allpage,
      page: () => AllPageView(),
      bindings: [
        AllPageBinding(),
      ],
    ),
    GetPage(
      name: selected_page,
      page: () => SelectedPageView(),
      bindings: [
        SelectedPageBinding(),
      ],
    ),
    GetPage(
      name: unselected_page,
      page: () => UnselectedPageView(),
      bindings: [
        UnselectedPageBinding(),
      ],
    ),
    GetPage(
      name: edit_page,
      page: () => EditPageView(),
      bindings: [
        EditPageBinding(),
      ],
    ),
  ];
}
