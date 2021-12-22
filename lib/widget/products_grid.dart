import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/provider/products.dart';
import 'package:flutter_complete_guide/widget/product_item.dart';
import 'package:provider/provider.dart';
import '../model/product.dart';
import './product_item.dart';


class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
     return GridView.builder(
       padding: const EdgeInsets.all(10.0),
       itemCount: loadedProducts.length,
       itemBuilder: (ctx, i) => ProductItem(
         loadedProducts[i].id,
         loadedProducts[i].title,
         loadedProducts[i].imageUrl,
       ),
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
         childAspectRatio: 3/2,
         crossAxisSpacing: 20,
         mainAxisSpacing: 10,
       ),
     );
  }
  const ProductGrid({
  Key? key,
  required this.loadedProducts,
  }): super(key: key);
  final List<Product> loadedProducts;
}




