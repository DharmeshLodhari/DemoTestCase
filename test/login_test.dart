// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_cases_demo/login_bloc.dart';

import 'package:test_cases_demo/main.dart';

void main() {

  test('valid credential',(){
    LoginBloc bloc = LoginBloc();
   bool result =  bloc.checkLogin('demo@gmail.com', 'Demo@123');
   expect(result, true);
   });

  test('Invalid credential',(){
    LoginBloc bloc = LoginBloc();
    bool result =  bloc.checkLogin('demo123@gmail.com', 'Demo@123');
    expect(result, false);
  });

  test('valid otp',(){
    LoginBloc bloc = LoginBloc();
    bool result =  bloc.checkOTPValid(1234);
    expect(result, true);
  });

  test('INvalid otp',(){
    LoginBloc bloc = LoginBloc();
    bool result =  bloc.checkOTPValid(1284);
    expect(result, false);
  });



}
