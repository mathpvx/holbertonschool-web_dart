import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // 1) Get user id
    final userData = await fetchUserData();
    final userMap = jsonDecode(userData) as Map<String, dynamic>;
    final id = userMap['id'] as String;

    // 2) Get user orders (JSON list)
    final ordersJson = await fetchUserOrders(id);
    final orders = (jsonDecode(ordersJson) as List).cast<String>();

    // 3) Sum product prices
    double total = 0.0;
    for (final product in orders) {
      final priceJson = await fetchProductPrice(product);
      final price = jsonDecode(priceJson); // can be int or double
      total += (price as num).toDouble();
    }

    return total;
  } catch (_) {
    return -1;
  }
}
