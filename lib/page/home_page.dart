import 'package:ecommerce/page/add_product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,

        title: const Text('FootWare Admin', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    body: ListView.builder(itemCount: 10,itemBuilder: (context, index){

      return  ListTile(
         title: const Text('Title'),
        subtitle: const Text("Price:100"),
        trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
      );
    }),

    floatingActionButton: FloatingActionButton(onPressed: (){
      Get.to(const AddProductPage(), transition: Transition.fadeIn, duration: const Duration(milliseconds: 10));
    }, child: const Icon(Icons.add),),

    ),);
  }
}
