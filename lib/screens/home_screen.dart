import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nike Collection",
                  style: Theme.of(context).textTheme.headline1),
                Text("The Best of Nike, all in one place",
                style: Theme.of(context).textTheme.headline2),
                SizedBox(
                  height: 30,),
                Row(
                  children: [
                Expanded(
                  flex: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],
            )],
            ),
          ),
        ),
      ),
    );
  }
}
