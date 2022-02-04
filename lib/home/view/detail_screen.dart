import 'package:flutter/material.dart';

import '../../locator.dart';
import '../view_model/view_model.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  final ViewModel _viewModel = locator<ViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse('0xFFfac8d4')),
      appBar: appbar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: productImage(),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Color(int.parse('0xFFfac8d4')),
                child: productDetails(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: BackButton(
        color: Colors.pink,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.pink,
          onPressed: () {},
        ),
      ],
    );
  }

  Container productImage() {
    return Container(
      decoration: BoxDecoration(
        color: Color(int.parse('0xFFfac8d4')),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Image.network(
          _viewModel.iceCreamList![0].productDescriptionImage.toString()),
      width: 400,
    );
  }

  Container productDetails() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${_viewModel.iceCreamList![0].productName}",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${_viewModel.iceCreamList![0].productRates} (${_viewModel.iceCreamList![0].productReviews} Reviews)',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {}),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(int.parse('0xFFfb458a')),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.horizontal_rule_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "2 Kg",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: (() {}),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(int.parse('0xFFfb458a')),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Colors.pink,
                        size: 26,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        _viewModel.iceCreamList![0].productPrice.toString(),
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                _viewModel.iceCreamList![0].productDescription.toString(),
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
