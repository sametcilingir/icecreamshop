import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String? productCategory;
  final String? productMiniImage;
  final Color? productColor;
  
  const CategoryWidget({
    Key? key,
    this.productCategory,
    this.productMiniImage,
    this.productColor,
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 40,
      child: Row(children: [
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(right: 1),
          decoration: BoxDecoration(
            color: productColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.network(
            productMiniImage.toString(),
          ),
        ),
        Container(
          height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: productColor?.withOpacity(0.3),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: Text(
            productCategory.toString(),
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ]),
    );
  }
}
