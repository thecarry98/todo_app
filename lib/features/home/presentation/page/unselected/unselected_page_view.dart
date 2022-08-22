import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/page/unselected/controller/unselected_page_controller.dart';

class UnselectedPageView extends GetView<UnselectedPageController> {
  // const SelectedPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Selected')),
    );
  }
}
