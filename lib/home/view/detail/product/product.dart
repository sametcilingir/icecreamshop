part of detail_screen;

Container productImage(ViewModel _viewModel) {
  return Container(
    decoration: BoxDecoration(
      color: MyColor.transformColor("fac8d4"),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(50),
      ),
    ),
    child: Image.network(
        _viewModel.iceCreamList![0].productDescriptionImage.toString()),
    width: 400,
  );
}

Container productDetails(ViewModel _viewModel) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(50),
      ),
    ),
    child: Padding(
      padding: MyInset.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productName(_viewModel),
          MySize.hLowSizedBox,
          productStars(_viewModel),
          Expanded(
            flex: 1,
            child: productAmountAndPrice(_viewModel),
          ),
          Expanded(
            flex: 2,
            child: productDescription(_viewModel),
          ),
          addChartButton(),
        ],
      ),
    ),
  );
}

Text productName(ViewModel _viewModel) {
  return Text(
    "${_viewModel.iceCreamList![0].productName}",
    style: MyTheme.textStyle.headline5?.copyWith(fontWeight: FontWeight.w400),
  );
}

Row productStars(ViewModel _viewModel) {
  return Row(
    children: [
      yellowStarsListView(),
      Icon(
        Icons.star,
        color: Colors.grey.withOpacity(0.2),
      ),
      MySize.wLowSizedBox,
      Text(
        '${_viewModel.iceCreamList![0].productRates} (${_viewModel.iceCreamList![0].productReviews} Reviews)',
        style: MyTheme.textStyle.bodyText2?.copyWith(
            fontWeight: FontWeight.w400, color: Colors.grey.withOpacity(0.6)),
      ),
    ],
  );
}

SizedBox yellowStarsListView() {
  return SizedBox(
    height: 20,
    child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Icon(
            Icons.star,
            color: Colors.yellow,
          );
        }),
  );
}

Row productAmountAndPrice(ViewModel _viewModel) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      productAmount(),
      productPrice(_viewModel),
    ],
  );
}

Row productAmount() {
  return Row(
    children: [
      amountDecreaseButton(),
      MySize.wLowSizedBox,
      amountText(),
      MySize.wLowSizedBox,
      addAmountButton(),
    ],
  );
}

InkWell amountDecreaseButton() {
  return InkWell(
    onTap: (() {}),
    child: Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Icon(
        Icons.horizontal_rule_outlined,
        color: Colors.white,
      ),
    ),
  );
}

Text amountText() {
  return Text(
    "2 Kg",
    style: MyTheme.textStyle.subtitle1?.copyWith(
      fontWeight: FontWeight.w800,
    ),
  );
}

InkWell addAmountButton() {
  return InkWell(
    onTap: (() {}),
    child: Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
  );
}

Row productPrice(ViewModel _viewModel) {
  return Row(
    children: [
      priceIcon(),
      MySize.wLowSizedBox,
      priceText(_viewModel),
    ],
  );
}

Icon priceIcon() {
  return const Icon(
    Icons.monetization_on,
    color: Colors.pink,
    size: 36,
  );
}

Text priceText(ViewModel _viewModel) {
  return Text(
    _viewModel.iceCreamList![0].productPrice.toString(),
    style: MyTheme.textStyle.headline4?.copyWith(
      fontWeight: FontWeight.bold,
    ),
  );
}

Text productDescription(ViewModel _viewModel) {
  return Text(
    _viewModel.iceCreamList![0].productDescription.toString(),
    style: TextStyle(
      fontSize: 18,
    ),
  );
}

ElevatedButton addChartButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(350, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: () {},
    child: Text("Add to Cart"),
  );
}
