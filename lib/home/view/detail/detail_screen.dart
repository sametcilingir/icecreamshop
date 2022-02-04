library detail_screen;

import 'package:flutter/material.dart';
import 'package:icecreamshop/core/app/my_color.dart';
import 'package:icecreamshop/core/app/my_navigator.dart';
import 'package:icecreamshop/core/app/my_size.dart';
import 'package:icecreamshop/core/app/my_theme.dart';

import '../../../core/app/my_inset.dart';
import '../../../locator.dart';
import '../../view_model/view_model.dart';

part "product/product.dart";

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  final ViewModel _viewModel = locator<ViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.transformColor("fac8d4"),
      appBar: appbar(context),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: productImage(_viewModel),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: MyColor.transformColor("fac8d4"),
                child: productDetails(_viewModel),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading:  BackButton(
        onPressed: () => MyNavigator(context: context).pop(),
        color: Colors.pink,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border),
          color: Colors.pink,
          onPressed: () {},
        ),
      ],
    );
  }
}
