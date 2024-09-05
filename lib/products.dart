import 'package:flutter/material.dart';
import 'package:ujian_flutter_1/page_1.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<Product> myProductList = [
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
    Product(name: 'IDN BS', price: '5,000,000,000', imageUrl: 'image/ducati.png'),
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
    Product(name: 'IDN BS', price: '30,000', imageUrl: 'image/IDN.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Product List', style: TextStyle(color: Colors.white),),
        
        backgroundColor:  Colors.blue,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ), 
        itemCount: myProductList.length,
        itemBuilder:(context, index) {
          return ProductItem(product: myProductList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return const PageOne();
          }));
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.arrow_left,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              '${product.imageUrl}',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${product.name}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text (
              'Rp ${product.price}',
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class Product{
  late String? name;
  late String? price;
  late String? imageUrl;

  Product({this.name, this.price, this.imageUrl});
}

















// import 'package:flutter/material.dart';

// class DetailProduct extends StatelessWidget {
//   const DetailProduct({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail Product'),
//       ),
//       body: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ), 
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.red,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                   'image/ducati.png',
//                   height: 100,
//                   width: 150,
//                   fit: BoxFit.cover,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Text('Ridwan'),
//                 ],
//               ),
//             ),
//           );
//         }
//       )
//     );
//   }
// }









// // import 'package:flutter/material.dart';

// // class DetailProduct extends StatelessWidget {
// //   const DetailProduct({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Detail Product'),
// //       ),
// //       body: GridView.builder(
// //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //           crossAxisCount: 2,
// //           crossAxisSpacing: 10,
// //           mainAxisSpacing: 5,
// //         ),
// //         itemCount: 20,
// //         itemBuilder: (context, index) {
// //           return Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Container(
// //               color: Colors.red,
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Image.asset(
// //                     'image/ducati.png',
// //                     height: 80,
// //                     width: 100,
// //                     fit: BoxFit.cover,
// //                   ),
// //                   const SizedBox(
// //                     height: 10,
// //                   ),
// //                   const Text('Ridwan')
// //                 ],
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
