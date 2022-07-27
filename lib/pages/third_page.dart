import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              OutlinedButton(onPressed: (){}, child: Text("Test")),
              OutlinedButton(onPressed: (){}, child: Text("Test")),
            ],
          )
        ],
      ),
    );
  }
}
