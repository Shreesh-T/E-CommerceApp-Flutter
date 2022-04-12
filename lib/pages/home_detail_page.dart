import 'package:flutter/material.dart';
import 'package:product_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:product_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(130, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ),
            Expanded(
                child: VxArc(
              height: 10,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl3
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.color(Colors.grey).make(),
                    10.heightBox,
                    "At invidunt vero et consetetur  est amet clita at, dolor invidunt."
                        .text
                        .color(Colors.grey)
                        .make()
                        .p12()
                  ],
                ).py(32),
              ),
            ))
          ],
        ).p16(),
      ),
    );
  }
}
