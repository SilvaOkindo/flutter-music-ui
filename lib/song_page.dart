import 'package:flutter/material.dart';
import 'package:music_ui/neu_box.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: NeuBox(),
      ),
    );
  }
}
