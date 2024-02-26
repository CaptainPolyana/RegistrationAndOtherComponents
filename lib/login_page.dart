import 'package:flutter/material.dart';
import 'package:flutter_registration_and_listview/list_product.dart';
import 'package:flutter_registration_and_listview/models/product.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: productlist.length,
            itemBuilder: (BuildContext context, int index) {

              return ListProduct(name_product: productlist[index].name, photo_path: productlist[index].pathphoto, desciption_product: productlist[index].description, price_prpduct: productlist[index].price, id_product: productlist[index].id);
            }
        ),
         appBar: AppBar(title: Text('Товары'),),
    );

  }
}