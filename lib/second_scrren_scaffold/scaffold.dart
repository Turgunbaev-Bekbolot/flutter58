import 'package:flutter/material.dart';
import 'package:stack/second_scrren_scaffold/body.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(),
    );
  }
}
