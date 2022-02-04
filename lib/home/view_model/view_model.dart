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

  @observable
  UserModel? userModel;

  @observable
  List<IceCreamModel>? iceCreamList;

  @action
  Future<void> getUser() async {
    userModel =
        await _firebaseHomeDatabaseService.getUser("vkydhbuoZdPXe1sbb5sU");
  }

  @action
  Future<void> getProducts() async {
    iceCreamList =
        await _firebaseHomeDatabaseService.getProduct();
  }
}
