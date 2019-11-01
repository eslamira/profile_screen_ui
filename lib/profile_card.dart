import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final double rating;

  ProfileCard(this.name, this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 148.0,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/place-holder.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350],
            blurRadius: 3.0,
            spreadRadius: 3.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$name',
            overflow: TextOverflow.clip,
            textScaleFactor: MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
            style: Theme.of(context).textTheme.display1.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                ),
          ),
          SizedBox(height: 24.0),
          Row(
            children: <Widget>[
              Text(
                '$rating',
                textScaleFactor:
                    MediaQuery.of(context).size.width > 600 ? 1.5 : 1,
                style: Theme.of(context)
                    .textTheme
                    .display2
                    .copyWith(color: Colors.white),
              ),
              Icon(
                Icons.star,
                size: 16.0,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
