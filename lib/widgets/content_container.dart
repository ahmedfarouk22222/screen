
import 'package:flutter/material.dart';

class contentContainer extends StatelessWidget {
  const contentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Image.asset('lib/assets/Content Container.png'),
    );
  }
}