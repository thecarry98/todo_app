import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/page/unselected/controller/unselected_page_controller.dart';

class UnselectedPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => UnselectedPageController());
  }
}
