part of home_screen;

Container headerTop(BuildContext context,ViewModel _viewModel) {
  return Container(
    padding: MyInset.only(left: 20, right: 20, top: 10),
    child: userInfo(_viewModel),
  );
}

 ListTile userInfo(ViewModel _viewModel) {
    return ListTile(
      contentPadding: MyInset.zero,
      title: Text(
        'Hey ${_viewModel.userModel?.userName?.split(' ')[0]}',
        style: MyTheme.textStyle.headline6?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        "What flavor do you like to eat?",
        style: MyTheme.textStyle.caption,
      ),
      trailing: CircleAvatar(
        backgroundColor: Colors.pink,
        backgroundImage: NetworkImage(
          _viewModel.userModel!.userProfileImage.toString(),
        ),
      ),
    );
  }

