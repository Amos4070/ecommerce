import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController
    extends GetxController {
  ///trying to add my data to cloud firestore database
  ///////////////////////////////////////////////////
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  ///we need to create collection reference
  /////////////////////////////////////////////////////////
  late CollectionReference productCollection;
  @override
  void onInit() {
    ///this is the same as initstate
    /////////////////////////////////////////////////////////
    productCollection = firestore.collection('product');
    super.onInit();
  }

  ///creating method to add product to our collection
///////////////////////////////////
//////////////////////////////////

  addProduct() {
    DocumentReference doc = productCollection.doc();
  }
}
