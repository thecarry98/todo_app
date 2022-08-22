import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/page/all/controller/all_page_controller.dart';

class AllPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AllPageController());
  }
}
