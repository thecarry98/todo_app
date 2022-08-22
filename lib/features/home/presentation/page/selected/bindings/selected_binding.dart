import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/page/selected/controller/selected_page_controller.dart';

class SelectedPageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SelectedPageController());
  }
}
