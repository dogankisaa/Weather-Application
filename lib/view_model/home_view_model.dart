import 'package:flutter/material.dart';
import 'package:weather_app/core/application_constants/home_view_constants.dart';
import 'package:weather_app/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewConstants homeViewConstants = HomeViewConstants();
  @override
  Future<void> init() async {}
}
