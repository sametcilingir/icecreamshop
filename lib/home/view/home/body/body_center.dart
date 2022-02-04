part of home_screen;


Container bodyCenter(ViewModel _viewModel) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bodyCenterText(),
          categoryListView(_viewModel),
        ],
      ),
    );
  }

  Padding bodyCenterText() {
    return Padding(
      padding: MyInset.only(left: 20, top: 20, bottom: 20),
      child: Text(
        "Populer Ice Cream",
        style: MyTheme.textStyle.headline6?.copyWith(
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }

  SizedBox categoryListView(ViewModel _viewModel) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: 3,
        padding: MyInset.only(left: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryWidget(
          productCategory: _viewModel.iceCreamList?[index].productCategory,
          productColor: _viewModel.iceCreamList?[index].productColor,
          productMiniImage: _viewModel.iceCreamList?[index].productMiniImage,
        ),
      ),
    );
  }
