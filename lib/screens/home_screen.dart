import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike_cupboard/constants/constants.dart';

import '../data/data.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/shoe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<String> _tags = ["All", "Shoes", "Bags", "Clothing", "Cap"];
int _selectedtag = 0;

Widget _buildtags(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
          _selectedtag = index;});
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: _selectedtag == index ? AppColors.PRIMARY_COLOR : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(_tags[index],
          style: TextStyle(
            color: _selectedtag == index ? Colors.grey[400]: Colors.black,
            fontFamily: "Poppins",),
          ),
        ),
      );

}

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
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: "Search",
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: AppColors.SECONDARY_COLOR,
                      border: InputBorder.none,
                    ),
                  ),
                  ),
                ),
                SizedBox(
                  width: 10,),
                 customIconButton(
                   backgroundColor: AppColors.SECONDARY_COLOR,
                   child: Image.asset("assets/icons/filter.png"),
                   splashColor: Colors.green,
                   onTap: () {},
                   radius: BorderRadius.circular(12),
                )
              ],
            ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _tags
                    .asMap()
                    .entries
                    .map((MapEntry map) => _buildtags(map.key))
                    .toList(),
              ),
                SizedBox(height: 25,),
                _buildShoeListView(context),

            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildShoeListView(BuildContext context) {
  return ListView.builder(
      itemCount: shoesData.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
      return ShoeCard(
      shoe: shoesData[index],
    );
  });
  }


}
