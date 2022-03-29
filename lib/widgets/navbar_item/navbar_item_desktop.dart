import 'package:first_web_server/datamodels/navbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel viewModel) {
    return Text(
      viewModel.title,
      style: TextStyle(fontSize: 18),
    );
  }
}
