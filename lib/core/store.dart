import 'package:product_catalog/models/cart.dart';
import 'package:product_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:product_catalog/models/catalog.dart';
import 'package:product_catalog/models/cart.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
