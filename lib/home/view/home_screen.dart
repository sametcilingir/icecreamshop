import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              flex: 2,
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
              flex: 7,
              child: bodyBottom(),
            ),
          ],
        ),
      ),
    );
  }

  Container headerTop(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.amber,
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
      color: Colors.green,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.8),
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
              color: Colors.grey,
            ),
            label: Text(
              'Filter',
              style: TextStyle(
                color: Colors.grey,
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
      color: Colors.blue,
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
                height: 155,
                width: double.infinity,
                margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 160,
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
                            width: 40,
                          ),
                          Icon(
                            Icons.favorite,
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
                                color: Colors.yellow,
                                size: 20,
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
                          Material(
                            color: Colors.white,
                            elevation: 2,
                            borderRadius: BorderRadius.circular(30),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 170,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container bodyMiddle() {
    return Container(
      color: Colors.red,
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
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 130,
                height: 50,
                child: Row(children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.pink.withOpacity(0.5),
                      child: Text(
                        'Vanilla',
                        style: TextStyle(
                          fontSize: 14,
                        ),
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
      color: Colors.yellow,
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
                width: 140,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
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
                              color: Colors.yellow,
                              size: 20,
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
                        Material(
                          color: Colors.white,
                          elevation: 2,
                          borderRadius: BorderRadius.circular(30),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: Colors.pink,
                          ),
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
