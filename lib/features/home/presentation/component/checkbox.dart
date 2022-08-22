import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBoxComponent extends StatefulWidget {
  CheckBoxComponent({this.isCheck = false, this.fn, Key? key, bool? ischeck})
      : super(key: key);
  bool? isCheck;
  VoidCallback? fn;
  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  void onChanged() {
    setState(() {
      widget.isCheck = !widget.isCheck!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderOnForeground: false,
      child: Checkbox(
        // side: BorderSide.lerp(3, 4, 3),
        tristate: true,
        value: widget.isCheck,
        activeColor: Colors.amber[800],
        onChanged: (value) {
          // onChanged();
          widget.fn!();
        },
      ),
    );
  }
}
