// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ViewModel on _ViewModelBase, Store {
  final _$userModelAtom = Atom(name: '_ViewModelBase.userModel');

  @override
  UserModel? get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel? value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  final _$iceCreamListAtom = Atom(name: '_ViewModelBase.iceCreamList');

  @override
  List<IceCreamModel>? get iceCreamList {
    _$iceCreamListAtom.reportRead();
    return super.iceCreamList;
  }

  @override
  set iceCreamList(List<IceCreamModel>? value) {
    _$iceCreamListAtom.reportWrite(value, super.iceCreamList, () {
      super.iceCreamList = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_ViewModelBase.init');

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$getUserAsyncAction = AsyncAction('_ViewModelBase.getUser');

  @override
  Future<void> getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getProductsAsyncAction = AsyncAction('_ViewModelBase.getProducts');

  @override
  Future<void> getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  @override
  String toString() {
    return '''
userModel: ${userModel},
iceCreamList: ${iceCreamList}
    ''';
  }
}
