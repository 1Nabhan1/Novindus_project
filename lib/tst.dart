import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}

class ApiService {
  final String baseUrl = "https://fakestoreapi.com/products";

  Future<List<Product>> fetchProducts(int startIndex, int limit) async {
    final response = await http.get(Uri.parse('$baseUrl?limit=$limit&skip=$startIndex'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var isFetching = false.obs;
  ApiService apiService = ApiService();

  @override
  void onInit() {
    super.onInit();
    fetchMoreProducts();
  }

  Future<void> fetchMoreProducts() async {
    if (isFetching.value) return;

    isFetching.value = true;
    update();

    try {
      List<Product> fetchedProducts = await apiService.fetchProducts(products.length, 10);
      products.addAll(fetchedProducts);
    } catch (e) {
      print(e);
    }

    isFetching.value = false;
    update();
  }

  Future<void> refreshProducts() async {
    isFetching.value = true;
    update();

    try {
      products.clear();
      List<Product> fetchedProducts = await apiService.fetchProducts(0, 10);
      products.addAll(fetchedProducts);
    } catch (e) {
      print(e);
    }

    isFetching.value = false;
    update();
  }
}

class ProductListPage extends StatelessWidget {
  final ProductController _controller = Get.put(ProductController());
  final ScrollController _scrollController = ScrollController();

  ProductListPage() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
        _controller.fetchMoreProducts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite Scroll with API'),
      ),
      body: Obx(() {
        if (_controller.products.isEmpty && _controller.isFetching.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return RefreshIndicator(
            onRefresh: _controller.refreshProducts,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _controller.products.length + (_controller.isFetching.value ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _controller.products.length) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.network(_controller.products[index].image, width: 50, height: 50),
                      title: Text(_controller.products[index].title),
                      subtitle: Text('\$${_controller.products[index].price}'),
                    ),
                  );
                }
              },
            ),
          );
        }
      }),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProductListPage(),
    );
  }
}
