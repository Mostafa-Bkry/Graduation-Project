import 'dart:async';

class API {
  Future<void> check() async {
    await Future.delayed(const Duration(seconds: 2));
    //print('Done from API Class');
  }
}
