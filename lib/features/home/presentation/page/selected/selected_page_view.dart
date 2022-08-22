import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/selected_page_controller.dart';

class SelectedPageView extends GetView<SelectedPageController> {
  // const SelectedPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(child: Text('Selected')),
    );
  }
}
