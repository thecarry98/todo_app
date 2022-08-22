import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:todo_app/features/home/domain/entities/task_entities.dart';
import 'package:todo_app/features/home/presentation/component/checkbox.dart';
import 'package:todo_app/features/home/presentation/component/task_component.dart';

import 'controller/all_page_controller.dart';

class AllPageView extends GetView<AllPageController> {
  // const AllPageView({Key? key}) : super(key: key);
  TaskEntities _task = TaskEntities(check: false, title: 'hehe');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, itemCount) => TaskComponent(),
      ),
    );
  }
}
