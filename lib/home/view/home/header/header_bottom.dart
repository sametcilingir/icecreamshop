part of home_screen;


Container headerBottom(ViewModel _viewModel) {
    return Container(
      padding: MyInset.all(20),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Padding(
            padding: MyInset.only(right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Padding(
                  padding: MyInset.only(left: 10),
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
              padding: MyInset.only(left: 10, right: 10, top: 8, bottom: 8),
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
              style: MyTheme.textStyle.button?.copyWith(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
