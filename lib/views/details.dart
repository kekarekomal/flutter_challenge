import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Color _iconColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.more_horiz,
              size: 35,
            ),
          ],
        ),
        backgroundColor: Color(0xff009688),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Color(0xff009688),
                ),
                clipper: CustomClipPath(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Details",
                      style: TextStyle(fontSize: 22, color: Colors.white)),
                ],
              )
            ],
          ),
          Detailstile()
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 75),
        color: Color(0xff009688),
        height: 70,
        child: Row(
          children: <Widget>[
            Text(
              "BUY IT NOW",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            Spacer(),
            Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff037E73),
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xff037E73),

                      ),
                    ]),
                child: GestureDetector(onDoubleTap: ()
                {setState(() {
                  _iconColor=Colors.pink;
                });},
                  child: Icon(
                    Icons.favorite_border,
                    color: _iconColor,
                    size: 32,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Detailstile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Reviews"),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Product Name"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sunflower",
                          style: TextStyle(color: Color(0xff009688)))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Price"),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$50",
                        style: TextStyle(color: Color(0xff009688)),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Size"),
                      SizedBox(
                        height: 5,
                      ),
                      Text("small", style: TextStyle(color: Color(0xff009688)))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 150,
                        backgroundColor: Color(0xff009688),
                      ), //0xffE1E9E8
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                        child: Center(
                          child: Image.asset(
                            "images/sunflower.png",
                            height: 250,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 170),
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(27),
                              topLeft: Radius.circular(27),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Spacer(),
                      Container(
                          margin: EdgeInsets.only(top: 180, right: 30),
                          child: Text(
                            "Price: \$50",
                            style: TextStyle(fontSize: 18),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Details",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 300,
                        child: Text(
                          'Flowers are the prettiest thing one should have in your home.',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
