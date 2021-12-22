import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget{
  // final String title;
  // final double price;

  static const routeName = '/product-detail';


  // ProductDetailsScreen(this.title, this.price);

  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
