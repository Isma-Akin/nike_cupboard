import 'package:flutter/material.dart';
import 'package:nike_cupboard/data/data.dart';
import 'package:nike_cupboard/widgets/custom%20_like_button.dart';

class DetailsScreen extends StatefulWidget {
  final ShoeDataModel shoesData;

  const DetailsScreen({required Key key, required this.shoesData}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> _sizeTags = ["36, 37, 38, 39, 40, 41, 42, 43, 44"];

Widget _buildSizeTags(int index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        _selectedSize = index;
      });
    },
  );
}

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
                    , icon: Icon(Icons.arrow_back_ios_rounded)
                    ),
                    Positioned(
                      right: 10,
                        top:10,
                        child: customLikeButton())
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.shoesData.name,
                style: Theme.of(context).textTheme.headline1,),
                SizedBox(
                  height: 10,
                ),
                Text(widget.shoesData.tagLine,
                style: Theme.of(context).textTheme.headline2,),
                SizedBox(
                  height: 10,
                ),
                Text("Select Size",
                style: Theme.of(context).textTheme.headline5,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
