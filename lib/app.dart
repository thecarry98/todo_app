import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todo_app/routes.dart';

import 'features/home/presentation/home.dart';
import 'features/home/presentation/page/all/all_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: Routes.home,
      getPages: Routes.routes,
    );
    // return MaterialApp(
    //   // home: HomePageView(),
    //   home: AllPageView(),
    // );
  }
}
