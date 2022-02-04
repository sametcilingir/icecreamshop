part of home_screen;


Column bodyTop(BuildContext context, ViewModel _viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bodyTopText(),
        bodyCard(context,_viewModel),
      ],
    );
  }

  Padding bodyTopText() {
    return Padding(
      padding: MyInset.only(left: 20, top: 20),
      child: Text(
        "Top Flavours",
        style: MyTheme.textStyle.headline6?.copyWith(
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }

  InkWell bodyCard(BuildContext context, ViewModel _viewModel) {
    return InkWell(
      onTap: () => MyNavigator(context: context).push(
        route: MyRoutes.detail,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            alignment: Alignment.centerRight,
            height: 140,
            width: context.width,
            margin: MyInset.only(left: 20, right: 20, top: 20),
            padding: MyInset.only(top: 14.0, right: 10),
            decoration: BoxDecoration(
              color: MyColor.transformColor(
                      _viewModel.iceCreamList![0].productColor.toString())
                  ?.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: cardTexts(_viewModel),
          ),
          cardImage(_viewModel)
        ],
      ),
    );
  }

  Container cardTexts(ViewModel _viewModel) {
    return Container(
      width: 165,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cardNameText(_viewModel),
          cardDetailText(_viewModel),
          cardPriceText(_viewModel),
        ],
      ),
    );
  }

  Text cardNameText(ViewModel _viewModel) {
    return Text(
      "${_viewModel.iceCreamList?.first.productName}",
      style: MyTheme.textStyle.headline6?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Row cardDetailText(ViewModel _viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Chip(
          backgroundColor: Colors.yellow,
          padding: MyInset.zero,
          label: Text(
            '${_viewModel.iceCreamList?.first.productAmount} KG',
            style: MyTheme.textStyle.caption
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        MySize.wMediumSizedBox,
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        MySize.wLowSizedBox,
        Text('${_viewModel.iceCreamList?.first.productRates}')
      ],
    );
  }

  Row cardPriceText(ViewModel _viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.monetization_on,
              color: Colors.pink,
              size: 16,
            ),
            MySize.wLowSizedBox,
            Text(
              _viewModel.iceCreamList!.first.productPrice.toString(),
              style: MyTheme.textStyle.headline6?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        FloatingActionButton.small(
          heroTag: "v1",
          onPressed: () {},
          elevation: 2,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  Padding cardImage(ViewModel _viewModel) {
    return Padding(
      padding: MyInset.only(top: 20.0, left: 10),
      child: SizedBox(
        height: 140,
        width: 140,
        child: Image.network(
            _viewModel.iceCreamList!.first.productImage.toString()),
      ),
    );
  }