import 'package:ecommerce/controllers/custom_firebase_options.dart';
import 'package:ecommerce/views/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/home_controller.dart';

void
    main() async {
  ///initializing getx controller
  Get.put(HomeController());

  ///initialising firebase
  WidgetsFlutterBinding.ensureInitialized();

  /// the firebase option was created by me check the firebase option folder
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const MyApp());
}

class MyApp
    extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///making get the root material
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}
