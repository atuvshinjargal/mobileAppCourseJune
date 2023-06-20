import 'package:flutter/material.dart';
import 'package:profile_app/star.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.green,
                  child: Center(child: Text("100")),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    color: Colors.blue,
                    child: Center(
                      child: Text("Expanded"),
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: double.infinity,
                  color: Colors.red,
                  child: Center(child: Text("40")),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.brown,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.orange,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Star(
            color: Colors.red,
            size: 100,
          ),
        ],
      ),
    );
  }
}
