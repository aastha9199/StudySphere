import 'package:courseapp/constants.dart';
import 'package:courseapp/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShoppingCartOption extends StatelessWidget {
  const ShoppingCartOption({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      onPressed: () {
        Util.openShoppingCart(context);
      },
      child: const Icon(Icons.shopping_cart),
    );
  }
}
