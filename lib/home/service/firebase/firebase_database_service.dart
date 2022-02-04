import 'package:cloud_firestore/cloud_firestore.dart';
import '../../model/user_model.dart';

import '../../model/ice_cream_model.dart';

import '../main/main_database_service.dart';

class FirebaseDatabaseService implements MainDatabaseService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<List<IceCreamModel>> getProduct() async {
    List<IceCreamModel> iceCreams = [];
    await _firebaseFirestore.collection('products').get().then((value) {
      for (var element in value.docs) {
        iceCreams.add(IceCreamModel.fromJson(element.data()));
      }
    });
    return iceCreams;
  }

  @override
  Future<UserModel> getUser(String userId) async {
    final UserModel userModel= await _firebaseFirestore
        .collection("users")
        .doc(userId)
        .get()
        .then((value) {
      return UserModel.fromJson(value.data());
    });

    return userModel;
  }
}
