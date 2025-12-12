import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userMap = jsonDecode(userData) as Map<String, dynamic>;
    final id = userMap['id'] as String;

    final ordersJson = await fetchUserOrders(id);
    final orders = (jsonDecode(ordersJson) as List).cast<String>();

    num total = 0;
    for (final product in orders) {
      final priceJson = await fetchProductPrice(product);
      final price = jsonDecode(priceJson) as num; // int or double
      total += price;
    }

    return total;
  } catch (_) {
    return -1; // prints -1 (not -1.0)
  }
}
