library home_screen;

import 'package:flutter/material.dart';
import 'package:icecreamshop/core/app/my_color.dart';
import 'package:icecreamshop/core/app/my_inset.dart';
import 'package:icecreamshop/core/app/my_route.dart';
import 'package:icecreamshop/core/app/my_size.dart';
import 'package:icecreamshop/core/app/my_theme.dart';
import 'package:icecreamshop/core/extensions/context_extension.dart';
import 'package:icecreamshop/home/widget/item_widget.dart';

import '../../../core/app/my_navigator.dart';
import '../../../locator.dart';
import '../../view_model/view_model.dart';
import '../../widget/category_widget.dart';

part "header/header_top.dart";
part "header/header_bottom.dart";
part "body/body_top.dart";
part "body/body_bottom.dart";
part "body/body_center.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ViewModel _viewModel = locator<ViewModel>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _viewModel.init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return scaffold(context);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: headerTop(context, _viewModel),
            ),
            Expanded(
              flex: 3,
              child: headerBottom(_viewModel),
            ),
            Expanded(
              flex: 6,
              child: bodyTop(context, _viewModel),
            ),
            Expanded(
              flex: 3,
              child: bodyCenter(_viewModel),
            ),
            Expanded(
              flex: 8,
              child: bodyBottom(_viewModel),
            ),
          ],
        ),
      ),
    );
  }
}
