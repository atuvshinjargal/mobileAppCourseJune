import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  late double
      seconds; //int gedeg buhel too (-1,0,1 .....) //late daraa n utga uguh
  late Timer timer;
  bool isTicking = false;
  final laps = <double>[];
  final itemHeight = 60.0;
  final scrollController = ScrollController();

  @override
  void initState() {
    seconds = 0;
    timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(
        () {
          if (isTicking == true) {
            seconds = seconds + 0.001; //seconds = seconds + 1;
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
            Container(
              color: Colors.blue,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${seconds.toStringAsFixed(3)} second',
                    style: Theme.of(context).textTheme.headline3,
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
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {
                          isTicking = false;
                          setState(() {
                            seconds = 0;
                            laps.clear();
                          });
                        },
                        child: Text('Restart'),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.purple),
                        ),
                        onPressed: () {
                          laps.add(seconds);
                          scrollController.animateTo(
                            itemHeight * laps.length,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text('Lap'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  controller: scrollController,
                  itemExtent: itemHeight,
                  itemCount: laps.length,
                  itemBuilder: (context, index) {
                    final lap = laps[index];
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 50), //2 hajuu talaas 50 zai
                      title: Text('Lap ${index + 1}'),
                      trailing: Text('${lap.toStringAsFixed(3)}'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
