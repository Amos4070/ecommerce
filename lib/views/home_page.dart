import 'package:ecommerce/controllers/home_controller.dart';
import 'package:ecommerce/views/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage
    extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (myLogic) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          titleTextStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          title: const Text('Footwear Admin'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: const Text('Title'),
                subtitle: const Text('Price:100'),
                trailing: IconButton(
                  onPressed: () {
                    ///TODO implement this
                  },
                  icon: const Icon(Icons.delete),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(
              const AddProductPage(),
              transition: Transition.leftToRight,
              duration: const Duration(milliseconds: 10),
            );
          },
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
