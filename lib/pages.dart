import 'package:flutter/material.dart';

final pages = [
  new PageModel(
    Colors.orange,
  ),
  new PageModel(
    Color(0xFF263238),
  )
];

class Page extends StatelessWidget {
  final PageModel viewModel;

  Page({
    this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: viewModel.color,
      ),
    );
  }
}

class PageModel {
  final color;
  PageModel(
    this.color,
  );
}
