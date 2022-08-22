import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/page/all/all_page.dart';
import 'package:todo_app/features/home/presentation/widgets/dialog_task.dart';

import 'controller/home_controller.dart';

class HomePageView extends GetView<HomeController> {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var index;
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: CupertinoNavigationBar(
            trailing: GestureDetector(
              onTap: () {
                Get.dialog(DialogTask());
              },
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            middle: Text(controller.title[controller.index.value],
                style: const TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
          ),
          body: controller.body[controller.index.value],
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.select_all),
                label: 'Selected',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.select_all),
                label: 'All',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.select_all),
                label: 'Unselected',
              ),
            ],
            currentIndex: controller.index.value,
            selectedItemColor: Colors.amber[800],
            onTap: controller.onTap,
          ),
        ),
      ),
    );
  }
}
