import 'package:icecreamshop/home/model/ice_cream_model.dart';
import 'package:icecreamshop/home/model/user_model.dart';

abstract class MainDatabaseService {
  Future<UserModel> getUser(String userId);
  Future<List<IceCreamModel>> getProduct();
}
