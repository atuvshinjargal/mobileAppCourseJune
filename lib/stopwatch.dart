import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  late int
      seconds; //int gedeg buhel too (-1,0,1 .....) //late daraa n utga uguh
  late Timer timer;
  bool isTicking = false;

  @override
  void initState() {
    seconds = 0;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(
        () {
          if (isTicking == true) {
            seconds++; //seconds = seconds + 1;
          }
        },
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$seconds second',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    isTicking = true;
                  },
                  child: Text('Start'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {
                    isTicking = false;
                  },
                  child: Text('Stop'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
