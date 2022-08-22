import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:flutter/src/cupertino/nav_bar.dart';

import 'controller/edit_page_controller.dart';

class EditPageView extends GetView<EditPageController> {
  const EditPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black,
            onPressed: Get.back,
          ),
        ),
        body: Center(
          child: Text(
            'Edit page',
          ),
        ),
      ),
    );
  }
}
