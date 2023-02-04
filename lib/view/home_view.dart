import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/view_model/home_view_model.dart';

import '../core/widgets/general_widgets/custom_app_bar_widget.dart';
import '../core/widgets/general_widgets/custom_scaffold_widget.dart';
import '../core/widgets/general_widgets/svg_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context, listen: true);

    return CustomScaffoldWidget(
      appBar: CustomAppBar(
          viewModel,
          context,
          viewModel.homeViewConstants.isCenterTitle,
          viewModel.homeViewConstants.locationIconString,
          viewModel.homeViewConstants.searchIconString,
          "Tanjungsiang, Subang"),
      body: Column(
        children: [
          headerCard(viewModel),
        ],
      ),
    );
  }

  Container headerCard(HomeViewModel viewModel) {
    return Container(
      width: double.infinity,
      height: viewModel.homeViewConstants.headerCardHeight,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(viewModel.homeViewConstants.headerCardRadius),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(viewModel.homeViewConstants.headerGradientX,
              viewModel.homeViewConstants.headerGradientY),
          colors: <Color>[
            viewModel.homeViewConstants.headerCardStartColor,
            viewModel.homeViewConstants.headerCardEndColor
          ],
        ),
      ),
    );
  }
}
