import 'package:flutter/material.dart';
import 'package:jarnama/add_product/page/add_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => AddProductPage())));
        }),
        child: const Text('Go'),
      ),
    );
  }
}
