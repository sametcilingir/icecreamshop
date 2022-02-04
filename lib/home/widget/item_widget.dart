import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? productPrice;
  final String? productCategory;
  final Color? productColor;

  const ItemWidget({
    Key? key,
    this.productImage,
    this.productName,
    this.productPrice,
    this.productCategory,
    this.productColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: productColor?.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              productImage.toString(),
              height: 85,
            ),
            Text(
              "Sherbet flavors",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "With strawberry jam",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: Colors.pink,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        productPrice.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  FloatingActionButton.small(
                    heroTag: "fmsdi${productName}",
                    backgroundColor: Colors.pink,
                    onPressed: () {},
                    elevation: 2,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
