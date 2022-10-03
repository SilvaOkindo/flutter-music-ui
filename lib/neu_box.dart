import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  const NeuBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shadow on the bottom
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(5, 5),
            blurRadius: 15
          ),
          // lighter shadow on the top
          BoxShadow(
              color: Colors.white,
              offset: Offset(-5, -5),
              blurRadius: 15
          )
        ]
      ),
    );
  }
}
