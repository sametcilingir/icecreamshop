import 'package:icecreamshop/home/model/ice_cream_model.dart';
import 'package:icecreamshop/home/model/user_model.dart';
import 'package:icecreamshop/home/service/firebase/firebase_database_service.dart';
import 'package:mobx/mobx.dart';

import '../../locator.dart';
part 'view_model.g.dart';

class ViewModel = _ViewModelBase with _$ViewModel;

abstract class _ViewModelBase with Store {
  final FirebaseDatabaseService _firebaseHomeDatabaseService =
      locator<FirebaseDatabaseService>();
  @action
  init() async {
    await getUser();
    await getProducts();
  }

  @observable
  late UserModel? userModel = UserModel();

  @observable
  late List<IceCreamModel>? iceCreamList = [];

  @action
  Future<void> getUser() async {
    try {
      userModel =
          await _firebaseHomeDatabaseService.getUser("vkydhbuoZdPXe1sbb5sU");
    } on Exception catch (e) {
      print("Get user error: " + e.toString());
    }
  }

  @action
  Future<void> getProducts() async {
    try {
      iceCreamList = await _firebaseHomeDatabaseService.getProduct();
    } on Exception catch (e) {
      print("Get products error: " + e.toString());
    }
  }
}
