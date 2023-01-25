import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/card_model.dart';

class TransactionService {
  String baseUrl = 'http://10.0.2.2:8000/api';

  Future checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    var url = '$baseUrl/checkout';
    var headers = {
      'content-type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode(
      'address': 'Saturnus',
      'items': carts.map(cart) => {
        'id': cart.product.id,
        'quantity': cart.quantity,
      },
    )toList(),
    'status': 'PENDING',
    'total_price': totalPrice,
    'shipping_price': 0,
  },
  );
}
