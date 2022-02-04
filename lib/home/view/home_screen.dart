import 'package:flutter/material.dart';

import '../../locator.dart';
import '../view_model/view_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ViewModel _viewModel = locator<ViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: headerTop(context),
            ),
            Expanded(
              flex: 3,
              child: headerBottom(),
            ),
            Expanded(
              flex: 6,
              child: bodyTop(),
            ),
            Expanded(
              flex: 3,
              child: bodyMiddle(),
            ),
            Expanded(
              flex: 8,
              child: bodyBottom(),
            ),
          ],
        ),
      ),
    );
  }

  Container headerTop(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          'Hey Emma',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "What flavor do you like to eat?",
          style: Theme.of(context).textTheme.caption,
        ),
        trailing: CircleAvatar(
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Container headerBottom() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(
                  left: 18.0, right: 18.0, top: 8.0, bottom: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
            ),
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            label: Text(
              'Filter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Container bodyTop() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Top Flavours",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                alignment: Alignment.centerRight,
                height: 135,
                width: double.infinity,
                margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                padding: const EdgeInsets.only(top: 14.0, right: 10),
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vanilla Ice Cream",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Chip(
                            backgroundColor: Colors.yellow,
                            padding: EdgeInsets.all(0),
                            label: Text(
                              '1 KG',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('4.9')
                        ],
                      ),
                      Row(
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
                                '14.6',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          FloatingActionButton.small(
                            backgroundColor: Colors.pink,
                            onPressed: () {},
                            elevation: 2,
                            child: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: SizedBox(
                  height: 120,
                  width: 150,
                  child: Placeholder(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container bodyMiddle() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Text(
              "Populer Ice Cream",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 120,
                height: 40,
                child: Row(children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Vanilla',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ]),
              )
            ],
          )
        ],
      ),
    );
  }

  Container bodyBottom() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Item",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 160,
                height: 200,
                padding:
                    EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterLogo(
                      style: FlutterLogoStyle.markOnly,
                      size: 80,
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
                    Row(
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
                              '14.6',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        FloatingActionButton.small(
                          backgroundColor: Colors.pink,
                          onPressed: () {},
                          elevation: 2,
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
