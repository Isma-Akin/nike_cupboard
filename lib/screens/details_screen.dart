import 'package:flutter/material.dart';
import 'package:nike_cupboard/data/data.dart';

class DetailsScreen extends StatefulWidget {
  final ShoeDataModel shoesData;

  const DetailsScreen({required Key key, required this.shoesData}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: widget.shoesData.backgroundColor,
                      ),
                      child: (Image.asset(widget.shoesData.image)),
                    ),
                    IconButton(onPressed: () {Navigator.pop(context);}
                    , icon: Icon(Icons.arrow_back_ios_rounded))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
