import 'package:flutter/material.dart';
import 'package:flutter_registration_and_listview/cart_product.dart';
class ToCartProduct extends StatelessWidget {
  const ToCartProduct ({Key? key, required this.name_producta, required this.photik_path, required this.desciptionik_product, required this.id_productik, required this.pricek_prpduct}) : super(key: key);
  final String name_producta;
  final String photik_path;
  final String desciptionik_product;
  final double pricek_prpduct;
  final int id_productik;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('${name_producta}'),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CartProduct(name_product1: name_producta, photo_path1: photik_path, desciption_product1: desciptionik_product, id_product1: id_productik, price_prpduct1: pricek_prpduct)));
      },
    );
  }
}