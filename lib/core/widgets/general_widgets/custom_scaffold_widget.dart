import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget {
  final AppBar appBar;
  final Widget body;
  const CustomScaffoldWidget({
    Key? key,
    required this.appBar,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Scaffold(
          appBar: appBar,
          body: body,
        ),
      ),
    );
  }
}
