import 'package:first_web_server/datamodels/navbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NavBarItemMobile extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel viewModel) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(children: [
        viewModel.icon,
        const SizedBox(
          width: 30,
        ),
        Text(
          viewModel.title,
          style: const TextStyle(fontSize: 18),
        ),
      ]),
    );
  }
}
