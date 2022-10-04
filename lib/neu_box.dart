import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shadow on the bottom
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(5, 5),
            blurRadius: 15
          ),
          // lighter shadow on the top
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-5, -5),
              blurRadius: 15
          )
        ]
      ),
      child: Center(child: child,),
    );
  }
}
