import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:first_web_server/datamodels/season_details_model.dart';
import 'package:first_web_server/styles/text_styles.dart';

class SeasonDetailsDesktop extends ViewModelWidget<SeasonDetailsModel> {
  @override
  Widget build(BuildContext context, SeasonDetailsModel viewModel) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            viewModel.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Text(
              viewModel.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}
