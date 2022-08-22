import 'package:get/get.dart';

import '../../../../domain/entities/task_entities.dart';

class AllPageController extends GetxController {
  List<TaskEntities> list = [
    TaskEntities(check: false, title: 'Task 1'),
    TaskEntities(check: true, title: 'Task 2'),
    TaskEntities(check: false, title: 'Task 3'),
    TaskEntities(check: true, title: 'Task 4'),
    TaskEntities(check: false, title: 'Task 5'),
    TaskEntities(check: true, title: 'Task 6'),
  ].obs;

  void changeCheckTask(TaskEntities task) {
    // TODO: call API
    print('1l');
  }
  // var listRes = list.obs;

  void onInit() {
    super.onInit();
  }

  void onClose() {
    super.onClose();
  }
}
