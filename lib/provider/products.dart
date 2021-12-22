import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/product_details_screen.dart';
import 'package:provider/provider.dart';
import '../model/product.dart';

class Products with ChangeNotifier{
   List<Product> _items = [
      Product(
         id: "p1",

         title: "Red Shirt",
         description: "A red shirt - it is very pretty",
         price: "30.00",
         imageUrl: "https://m.media-amazon.com/images/I/51jhXuG27BL._AC_UX385_.jpg",
      ),
      Product(
         id: "p2",
         title: "White Shirt",
         description: "A red shirt - it is very pretty",
         price: "30.00",
         imageUrl: "https://allensolly.imgix.net/img/app/product/3/343733-1664487.jpg",
      ),
      Product(
         id: "p3",
         title: "blue Shirt",
         description: "A red shirt - it is very pretty",
         price: "30.00",
         imageUrl: "https://rukminim1.flixcart.com/image/714/857/kkbh8cw0/shirt/t/z/z/l-kcsh-110-pp-6-fubar-original-imafzzs3ccmsdfbn.jpeg?q=50",
      ),
      Product(
         id: "p4",
         title: "Pink Shirt",
         description: "A red shirt - it is very pretty",
         price: "30.00",
         imageUrl: "https://5.imimg.com/data5/CE/XG/MY-68030708/mens-readymade-pink-shirt-500x500.jpg",
      ),
   ];

   List<Product> get items {
      return [..._items];
   }

   void addProduct() {
      // _items.add(value);
      notifyListeners();
}
}