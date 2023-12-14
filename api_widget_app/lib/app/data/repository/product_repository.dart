import 'dart:convert';

import 'package:api_widget_app/app/data/http/exceptions.dart';
import 'package:api_widget_app/app/data/http/http_client.dart';
import 'package:api_widget_app/app/data/models/product_model.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> getProducts();
}

class ProductRepository implements IProductRepository {
  final IHttpClient client;

  ProductRepository({required this.client});

  @override
  Future<List<ProductModel>> getProducts() async {
    
    final response = await client.get(
      url: 'https://dummyjson.com/products',
    );

    if (response.statusCode == 200) {
      final List<ProductModel> products = [];
      final body = jsonDecode(response.body);

      body['products'].map((item) {
        final ProductModel product = ProductModel.fromMap(item);
        products.add(product);
      }).toList();

      return products;

    }else if(response.statusCode == 404){
      throw NotFoundException('A url informada não é válida');
    }else{
      throw Exception('Ocorreu um erro inesperado');
    }
  }
}