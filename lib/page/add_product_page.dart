import 'package:flutter/material.dart';

import 'dropdown_file/dropdown_listWidget.dart';



class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title:    const Text('Add Product'),
centerTitle:  true,),

    body:   SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Add Product',  style: TextStyle(fontSize: 20, color:  Colors.indigoAccent),),
           TextField(
             decoration: InputDecoration(
               hintText: 'Enter Your Product Name',
               ///this is the textbox label
               label: const Text('Product Name'),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
             ),

           ),
           const SizedBox(height: 10),
           TextField(
             keyboardType: TextInputType.text,
             maxLines: 5,
             decoration: InputDecoration(

               hintText: 'Enter Your Product Description',
               ///this is the textbox label
               label: const Text('Product Description'),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
             ),

           ),
            const SizedBox(height: 10),

            TextField(
             decoration: InputDecoration(
               hintText: 'Enter Your Image Url',
               ///this is the textbox label
               label: const Text('Image Url'),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
             ),

           ),
            const SizedBox(height: 10),

            TextField(
             decoration: InputDecoration(
               hintText: 'Enter Your Product Price',
               ///this is the textbox label
               label: const Text('Product Price'),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
             ),

           ),
            const SizedBox(height: 10),

        const Row(
          children: [
            Flexible(child: DropDownButton(dropDownName: 'Select Image',
              itemsList: ['Cat1', 'Cat2', 'Cat3'],)),
            Flexible(child: DropDownButton(dropDownName: 'Select Brand', itemsList: ['Brand1', 'Brand2', 'Brand3'],)),

          ],
        ),
            const SizedBox(height: 10),
            
            const Text('Offer Product?'),
            const SizedBox(height: 10),
       const DropDownButton(dropDownName: 'Select', itemsList: ['true', 'false'],),







          ],
        ),
      ),
    ),


    );
  }
}


