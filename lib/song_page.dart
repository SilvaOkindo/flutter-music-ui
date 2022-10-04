import 'package:flutter/material.dart';
import 'package:music_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25 ),
          child: Column(
            children: [
              // back button and menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: NeuBox( child: Icon(Icons.arrow_back),),
                  ),
                  Text("P L A Y L I S T"),
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: NeuBox( child: Icon(Icons.menu),),
                  ),
                ],
              ),
              // cover art, artist name, song

              const SizedBox(height: 25,),

              NeuBox(child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                      child: Image.asset("images/9.jpg")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(""
                                "Die For Me",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade700
                              ),
                            ),
                            const SizedBox(height: 6,),
                            const Text(
                              "Post Malone",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Icon(Icons.favorite, size: 32, color: Colors.redAccent,)
                      ],
                    ),
                  )
                ],
              )
              ),
              //start time shuffle, repeat, end time
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("0:00"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("4:22")
                ],
              ),
              const SizedBox(height: 25,),

              // linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  barRadius: const Radius.circular(6),
                  lineHeight: 10,
                  percent: 0.7,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 25,),

              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                        child: NeuBox(child: Icon(Icons.skip_previous),)
                    ),
                    Expanded(
                      flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(child: Icon(Icons.play_arrow),),
                        )
                    ),
                    Expanded(
                        child: NeuBox(child: Icon(Icons.skip_next),)
                    ),
                  ],
                ),
              )

              // previous song pause play, skip
            ],
          ),
        ),
      )
    );
  }
}
