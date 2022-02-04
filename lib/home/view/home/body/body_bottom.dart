part of home_screen;



  Container bodyBottom(ViewModel _viewModel) {
    return Container(
      padding: MyInset.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bodyBottomText(),
          MySize.hMediumSizedBox,
          itemListView(_viewModel),
        ],
      ),
    );
  }

  Text bodyBottomText() {
    return Text(
      "Top Item",
      style: MyTheme.textStyle.headline6?.copyWith(
        fontWeight: FontWeight.w100,
      ),
    );
  }

  SizedBox itemListView(ViewModel _viewModel) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ItemWidget(
                productPrice: _viewModel.iceCreamList?[index].productPrice,
                productCategory:
                    _viewModel.iceCreamList?[index].productCategory,
                productImage: _viewModel.iceCreamList?[index].productImage,
                productName: _viewModel.iceCreamList?[index].productName,
                productColor: _viewModel.iceCreamList?[index].productColor,
              )),
    );
  }