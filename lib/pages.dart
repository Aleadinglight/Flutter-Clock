import 'package:flutter/material.dart';

final pages = [
  new PageModel(
    Colors.orange,
  )
];

class Page extends StatelessWidget {
  final PageModel viewModel;

  Page({
    this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}

class PageModel {
  final color;
  PageModel(
    this.color,
  );
}
