import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBoxComponent extends StatelessWidget {
  CheckBoxComponent({Key? key, this.isCheck = false, this.fn, bool? ischeck})
      : super(key: key);
  bool? isCheck;
  VoidCallback? fn;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderOnForeground: false,
      child: Checkbox(
        // side: BorderSide.lerp(3, 4, 3),
        tristate: true,
        value: isCheck,
        activeColor: Colors.amber[800],
        onChanged: (value) {
          fn;
        },
      ),
    );
  }
}
