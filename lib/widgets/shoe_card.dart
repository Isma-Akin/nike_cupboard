import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_cupboard/data/data.dart';
import 'package:nike_cupboard/widgets/custom_like_button.dart';
import 'package:nike_cupboard/widgets/custom_buy_button.dart';

class ShoeCard extends StatelessWidget {
  final ShoeData shoe;

  const ShoeCard({key, required this.shoe}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: shoe.backgroundColor,
      ),
      height: 170,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              customLikeButton(),
              Center(
                child: Container(
                  height: 120,
                  width: 140,
                  child: Hero(
                    tag: "${shoe.id}",
                      child: Image.asset(shoe.image)),
                ),
            )],
          )),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(text:
              TextSpan(
                text: shoe.name,
                style: Theme.of(context).textTheme.headline4,
                children: <TextSpan> [
                          TextSpan(
                            text: '\nby Nike',
                            style: Theme.of(context).textTheme.caption)
                ],
              )
              ),
              Text(shoe.tagLine,
                style: Theme.of(context).textTheme.caption,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ ${shoe.price}",
                    style: Theme.of(context).textTheme.headline4,),
                  customBuyButton(),
                ],
              )
            ],
          ))
        ],
      )
    );
  }
}
