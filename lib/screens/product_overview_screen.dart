import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widget/products_grid.dart';
import '../widget/products_grid.dart';

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text("My Shop",
          style: TextStyle(
            color: Colors.red,
            fontSize: 22,
          ),
          ),
        ),
      ),
      body: ProductGrid(loadedProducts: [],),
    );
  }
}


