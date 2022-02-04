import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

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
              "Raspberry Ice Cream",
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
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('4.9 (229 Reviews)'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.horizontal_rule_outlined,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("2 Kg"),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
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
                      '14.6',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "xcv\ncxvcv\ncxvxc\nvxc\nvxc",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 50),
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
