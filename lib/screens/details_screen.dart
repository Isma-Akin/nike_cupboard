import 'package:flutter/material.dart';
import 'package:nike_cupboard/constants/constants.dart';
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

  int _selectedSize = 0;

Widget _buildSizeTags(int index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        _selectedSize = index;
      });
    },
    child: Container(
      width: 50,
      decoration: BoxDecoration(
        color: _selectedSize == index ? AppColors.PRIMARY_COLOR : Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
        child: Text(
          _sizeTags[index],
          style: TextStyle(
            color: _selectedSize != index ? Colors.grey : Colors.white,
            fontFamily: "Poppins",
          ),
        ),
      ),
    ),
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
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _sizeTags.length,
                      itemBuilder: (context, index) {
                    return Row(
                      children: [
                        _buildSizeTags(index),
                        SizedBox(
                          width: 10,)
                      ],
                    );
                  })
                ),
                SizedBox(height: 20,
                ),
                Text("Description",
                style: Theme.of(context).textTheme.headline2,),
                SizedBox(height: 10,),
                Text(widget.shoesData.description,
                style: Theme.of(context).textTheme.headline2,),
                SizedBox(height: 20,),
                Text("Reviews",
                style: Theme.of(context).textTheme.headline5,),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/people1.jpg'),
                            ),
                        ),
                          Positioned(left: 30,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/people2.jpg'),
                                ),
                              ),
                          ),
                          Positioned(left: 60,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/images/people3.jpg'),
                              ),
                            ),
                          ),
                          Positioned(left: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                              child: CircleAvatar(child:
                              Text("+12",
                                style: TextStyle(
                                  color: Colors.white, fontSize: 13,
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

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
