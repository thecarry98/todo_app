import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/home/domain/entities/task_entities.dart';

import '../page/all/all_page.dart';
import '../page/selected/selected_page_view.dart';
import '../page/unselected/unselected_page_view.dart';

class HomeController extends GetxController {
  // const HomeController({Key? key}) : super(key: key);
  List<String> title = [
    'Selected',
    'All',
    'Unselected',
  ];

  var task = TaskEntities().obs;
  var listTask = <TaskEntities>[].obs;

  var checkDialog = false.obs;

  void checkTaskComponent() {
    task.value.check = true;
  }

  void changeCheckDialog() {
    checkDialog.value = !checkDialog.value;
  }

  List<Widget> body = [
    SelectedPageView(),
    AllPageView(),
    UnselectedPageView(),
  ];

  var index = 1.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onTap(int a) {
    index.value = a;
  }
}
