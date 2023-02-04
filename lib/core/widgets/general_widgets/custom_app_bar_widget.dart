import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/general_widgets/svg_widget.dart';

import '../../../view_model/home_view_model.dart';

AppBar CustomAppBar(HomeViewModel viewModel, BuildContext context,
    bool isCenter, String leadingIcon, String actionIcon, String title) {
  return AppBar(
      centerTitle: isCenter,
      titleSpacing: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgImage(path: leadingIcon),
              const SizedBox(
                width: 13,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SvgImage(path: actionIcon)
        ],
      ));
}
