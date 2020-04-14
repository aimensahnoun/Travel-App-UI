import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
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
              'Where are you going on holiday today ?',
              style: TextStyle(
                  fontFamily: 'Museo',
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 23,
            ),
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                        color: Color(0xFFE2F0F2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('./assets/plane.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3E8EB),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('./assets/train.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3E8EB),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('./assets/bus.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3E8EB),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('./assets/bed.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 75,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3E8EB),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('./assets/fork.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Expanded(
              flex: 1,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Text(
                    'Top Destinations',
                    style: TextStyle(
                        fontFamily: 'Museo',
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Color(0xFF525458)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Popular Hotels',
                    style: TextStyle(
                        fontFamily: 'Museo',
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Color(0xFFBECACD)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Popular Restaurants',
                    style: TextStyle(
                        fontFamily: 'Museo',
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Color(0xFFBECACD)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Scroll(
                      'London', 'United Kingdom', 5.0, './assets/london.jpg'),
                  Scroll('Paris', 'France                  ', 5.0,
                      './assets/paris.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Scroll extends StatelessWidget {
  String location;
  String city;
  double rating;
  String pic;

  Scroll(this.location, this.city, this.rating, this.pic);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 450,
          width: 300,
          child: Stack(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(pic, fit: BoxFit.fill),
                ),
              ),
              Positioned(
                left: 15,
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      location,
                      style: TextStyle(
                          fontFamily: 'Museo',
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.room,
                          color: Color(0xFFB5C3C6),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          city,
                          style: TextStyle(
                            color: Color(0xFFB5C3C6),
                            fontFamily: 'Museo',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Musoe',
                              fontSize: 20,
                              color: Color(0xFFB5C3C6)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
