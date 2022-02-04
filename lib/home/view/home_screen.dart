import 'package:flutter/material.dart';
import 'package:icecreamshop/home/widget/item_widget.dart';

import '../../locator.dart';
import '../view_model/view_model.dart';
import '../widget/category_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ViewModel _viewModel = locator<ViewModel>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _viewModel.init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
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
                      child: bodyTop(context),
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
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  Container headerTop(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          'Hey ${_viewModel.userModel?.userName?.split(' ')[0]}',
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
          backgroundImage: NetworkImage(
            _viewModel.userModel!.userProfileImage.toString(),
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

  Container bodyTop(BuildContext context) {
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
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/detail'),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  height: 140,
                  width: double.infinity,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                  padding: const EdgeInsets.only(top: 14.0, right: 10),
                  decoration: BoxDecoration(
                    color: Color(int.parse(
                            '0xFF${_viewModel.iceCreamList?[0].productColor}'))
                        .withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 165,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${_viewModel.iceCreamList?.first.productName}",
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
                                '${_viewModel.iceCreamList?.first.productAmount} KG',
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
                            Text(
                                '${_viewModel.iceCreamList?.first.productRates}')
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
                                  _viewModel.iceCreamList!.first.productPrice
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            FloatingActionButton.small(
                              heroTag: "ddsv",
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
                    height: 140,
                    width: 140,
                    child: Image.network(
                        _viewModel.iceCreamList!.first.productImage.toString()),
                  ),
                )
              ],
            ),
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
          Container(
            height: 40,
            child: ListView.builder(
              itemCount: 3,
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CategoryWidget(
                productCategory:
                    _viewModel.iceCreamList?[index].productCategory,
                productColor: Color(int.parse(
                    '0xFF${_viewModel.iceCreamList?[index].productColor}')),
                productMiniImage:
                    _viewModel.iceCreamList?[index].productMiniImage,
              ),
            ),
          ),
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
          Container(
            height: 190,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ItemWidget(
                      productPrice:
                          _viewModel.iceCreamList?[index].productPrice,
                      productCategory:
                          _viewModel.iceCreamList?[index].productCategory,
                      productImage:
                          _viewModel.iceCreamList?[index].productImage,
                      productName: _viewModel.iceCreamList?[index].productName,
                      productColor: Color(int.parse(
                          '0xFF${_viewModel.iceCreamList?[index].productColor}')),
                    )),
          ),
        ],
      ),
    );
  }
}
