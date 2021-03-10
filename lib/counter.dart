import 'package:flutter/material.dart';

/// extends ChangeNotifier 를 꼭 써줘야함!
class Counter extends ChangeNotifier {
  /// _count 변수
  int _count = 0;

  /// getCount() 함수를 통해 _count 변수값을 가져온다.
  int getCount() => _count;

  /// 증가시키는 함수
  int incrementCount() {
    _count++;
    notifyListeners();

    /// 이 함수를 통해 계속 주시한다.
  }

  /// 숫자를 리셋 시키는 함수
  int resetCount() {
    _count = 0;
    notifyListeners();
  }

  /// 감소하는 함수
  int minusCount() {
    _count--;
    notifyListeners();
  }
}
