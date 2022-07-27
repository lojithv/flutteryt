import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yt/components/cust_outline_button.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustOutlineBtn(
                onTap: () {
                  print("hello");
                },
                label: "Test1",
                disabled: false,
              ),
              const CustOutlineBtn(onTap: null, label: "Test2", disabled: true),
              const CustOutlineBtn(onTap: null, label: "Test2", disabled: false),
            ],
          )
        ],
      ),
    );
  }
}
