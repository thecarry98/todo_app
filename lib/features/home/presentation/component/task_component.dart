import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/home/domain/entities/task_entities.dart';
import 'package:todo_app/features/home/presentation/component/checkbox.dart';
import 'package:todo_app/features/home/presentation/controller/home_controller.dart';

import '../../../../routes.dart';

class TaskComponent extends GetView<HomeController> {
  TaskComponent({
    this.onChangeCheck,
    this.deleteTask,
    this.editTask,
    this.task,
    Key? key,
  }) : super(key: key);
  TaskEntities? task;
  VoidCallback? onChangeCheck;
  VoidCallback? editTask;
  VoidCallback? deleteTask;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      // widget.fn!;
      // controller.changeCheckDialog,
      child: Container(
        margin: EdgeInsets.only(
          left: 8,
          top: 8,
          right: 8,
        ),
        decoration: const BoxDecoration(
          color: Color(0xffd7dbdd),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        height: 50,
        child: Container(
          // color: Colors.blue,
          // margin: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: CheckBoxComponent(
                  // isCheck: widget.check ?? false,
                  isCheck: task?.check,
                  fn: onChangeCheck,
                ),
              ),
              Flexible(
                flex: 10,
                child: Row(
                  children: [
                    Text(
                      task?.title ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.edit_page,
                          arguments: 'taskID: taskID',
                        );
                      },
                      child: Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.amber[800],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // widget.delFn;
                      },
                      child: Icon(
                        Icons.delete,
                        size: 18,
                        color: Colors.amber[800],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
