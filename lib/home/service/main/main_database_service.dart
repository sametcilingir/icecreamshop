import '../../model/ice_cream_model.dart';
import '../../model/user_model.dart';

abstract class MainDatabaseService {
  Future<UserModel> getUser(String userId);
  Future<List<IceCreamModel>> getProduct();
}
