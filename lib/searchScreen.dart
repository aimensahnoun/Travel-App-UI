
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Hi Joe!',
                  style: TextStyle(
                    fontFamily: 'Museo',
                    fontSize: 20,
                  ),
                ),
                CircleAvatar(
                  maxRadius: 15,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsAUelg7yg0mepGMf-N93hh6E9XrLnKwsKa4YEQ6swhDknk4F9eQ&s'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'What do you want to search for Today ?',
              style: TextStyle(
                  fontFamily: 'Museo',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0XFFEDF1F2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Color(0xFFD4DBDE),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                          color: Color(0xFFC7D0D3),
                          fontSize: 20,
                          fontFamily: 'Museo'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SearchCity('London, United Kingdom',5,'5.0',"It is among the oldest of the world's \ngreat cities , its history spanning ...",'./assets/london.jpg'),
                  SearchCity('Paris, France                       ',4.5,'4.5',"It is among the oldest of the world's \ngreat cities , its history spanning ...",'./assets/paris.jpg'),
                  SearchCity('Rome, Italy                         ',4.5,'4.5',"It is among the oldest of the world's \ngreat cities , its history spanning ...",'./assets/rome.png'),
                  SearchCity('Crete, Greece                     ',5,'5',"It is among the oldest of the world's \ngreat cities , its history spanning ...",'./assets/crete.jpg'),
                  SearchCity('Bali, Indonesia                     ',5,'5',"It is among the oldest of the world's \ngreat cities , its history spanning ...",'./assets/bali.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchCity extends StatelessWidget {
  String location;
  double rating;
  String ratin;
  String disc;
  String pic;

  SearchCity(this.location,this.rating,this.ratin,this.disc,this.pic);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 170,
        ),
        Container(
          width: double.infinity,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 148,
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              location,
                              style: TextStyle(
                                fontFamily: 'Museo',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 3,),
                            Icon(
                              Icons.favorite,
                              color: Color(0xFFB4C2C5),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SmoothStarRating(
                              color: Color(0XFFF6BD44),
                              borderColor: Color(0XFFF6BD44),
                              rating: rating,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              ratin,
                              style: TextStyle(
                                  fontFamily: 'Musoe',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFF6BD44),
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          disc,
                          style: TextStyle(
                            fontFamily: 'Museo',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFFB4C2C5)
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 0,
          child: Container(
            height: 140,
            width: 140,
            child: ClipRRect(
              child: Image.asset(
                pic,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
