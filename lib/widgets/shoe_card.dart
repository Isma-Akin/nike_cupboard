import 'package:flutter/cupertino.dart';
import 'package:nike_cupboard/data/data.dart';

class ShoeCard extends StatelessWidget {
  final ShoeDataModel shoe;

  const ShoeCard({required Key key, required this.shoe}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: shoe.backgroundColor,
      ),
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 140,
                  child: Image.asset(shoe.image),
                ),
            )],
          ))
        ],
      )
    );
  }
}
