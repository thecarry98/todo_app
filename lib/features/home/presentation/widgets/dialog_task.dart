import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todo_app/features/home/presentation/component/checkbox.dart';
import 'package:todo_app/features/home/presentation/controller/home_controller.dart';

class DialogTask extends GetView<HomeController> {
  DialogTask(
      {Key? key, this.callbackFn, this.check = false, this.textController})
      : super(key: key);
  Function? callbackFn;
  bool? check;
  TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Create Task'),
      ),
      content: Container(
        height: 50,
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: CupertinoTextField(
                padding: const EdgeInsets.all(10),
                controller: textController,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  // decorationColor: Colors.blue,
                  // color: Colors.red,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Obx(
                () => CheckBoxComponent(
                  isCheck: controller.checkDialog.value,
                  fn: controller.changeCheckDialog,
                ),
              ),
            ),
          ],
        ),
        // color: Colors.red,
      ),
      actions: [
        GestureDetector(
          onTap: Get.back,
          child: const Padding(
            // alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(
              textAlign: TextAlign.center,
              'Cancel',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            callbackFn;
          },
          child: Container(
            color: Colors.blue,
            child: const Padding(
              // alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                textAlign: TextAlign.center,
                'Submit',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
        // Text('Submit'),
      ],
    );
  }
}
