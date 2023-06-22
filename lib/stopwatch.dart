import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  late int seconds; //int gedeg buhel too (-1,0,1 .....) //late daraa n utga uguh
  late Timer timer;

  @override
  void initState() {
    seconds = 0;
    timer = Timer.periodic(Duration(seconds: 1), (timer) { 
      setState(() {
        seconds++; //seconds = seconds + 1;
      },);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Text(
          '$seconds second',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
