import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/controller/home_controller.dart';

import '../page/all/controller/all_page_controller.dart';
import '../page/selected/controller/selected_page_controller.dart';
import '../page/unselected/controller/unselected_page_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AllPageController());
    Get.lazyPut(() => SelectedPageController());
    Get.lazyPut(() => UnselectedPageController());
  }
}
