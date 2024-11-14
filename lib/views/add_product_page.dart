import 'package:ecommerce/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../widgets/drop_down_pubdevpackage.dart';

class AddProductPage
    extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (myCustomLogic) {
      return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Add Product')),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Add New Product',
                  style: TextStyle(fontSize: 30, color: Colors.indigoAccent, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: const Text('Product Name'),
                      hintText: 'Enter Your Product Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(height: 10),
                TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                      label: const Text('Product Description'),
                      hintText: 'Enter Your Product Description',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: const Text('Image Url'),
                      hintText: 'Enter Your Image Url',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: const Text('Product Price'),
                      hintText: 'Enter Your Product Price',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                        child: DropDownButton(
                      name: 'Category',
                      listItem: const [
                        'Cat1',
                        'Cat2',
                        'Cat3'
                      ],
                      onSelected: (selectedValue) {},
                    )),
                    Flexible(
                        child: DropDownButton(
                      name: 'Brand',
                      listItem: const [
                        'Brand1',
                        'Brand2',
                        'Brand3'
                      ],
                      onSelected: (selectedValue) {},
                    )),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Offer Product?'),
                DropDownButton(
                  name: 'Offer?',
                  listItem: const [
                    'true',
                    'false',
                  ],
                  onSelected: (selectedValue) {},
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent),
                    onPressed: () {},
                    child: const Text(
                      'Add Project',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
