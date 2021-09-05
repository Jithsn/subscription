import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<Rec> re = [
    Rec(icon: Icons.arrow_right_alt_rounded, col: Colors.blueGrey),
    Rec(icon: Icons.record_voice_over_rounded, col: Colors.lightGreen),
    Rec(icon: Icons.earbuds_sharp, col: Colors.blue),
    Rec(icon: Icons.earbuds_sharp, col: Colors.blue),
  ];
  List<Sec> se = [
    Sec(
        icon: Icons.new_releases,
        col: Colors.black,
        col1: Colors.grey,
        t1: "Netflix",
        t2: "subscription",
        t3: "10",
        t4: "March 25,2021",
        imgsrc: 'images/netflix-logo.png'),
    Sec(
        icon: Icons.new_releases,
        col: Colors.black,
        col1: Colors.grey,
        t1: "Megago",
        t2: "subscription",
        t3: "${9.88} ",
        t4: "March 24,2021",
        imgsrc: 'images/Megogo_Logo.png'),
    Sec(
        icon: Icons.new_releases,
        col: Colors.black,
        col1: Colors.grey,
        t1: "Apple music",
        t2: "subscription",
        t3: "${3.88} ",
        t4: "March 25,2021",
        imgsrc: 'images/music-logo.png')
  ];
  List<DebiCard> debitList = [
    DebiCard(
        cardNum: "4523 **** **** 9526",
        date: "05/26",
        rupees: "1500",
        color: Colors.black),
    DebiCard(
        cardNum: "4529 **** **** 9256",
        date: "05/26",
        rupees: "2000",
        color: Colors.green[900]!),
    DebiCard(
        cardNum: "2345 **** **** 95237",
        date: "05/26",
        rupees: "1200",
        color: Colors.indigoAccent[400]!)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: new Icon(Icons.wallet_giftcard),
            title: new Text("data"),
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: new Icon(Icons.lock_clock),
              title: new Text("data")),
          BottomNavigationBarItem(
              icon: new Icon(Icons.menu_book), title: new Text("data")),
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings), title: new Text("data")),
        ],
      ),
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 60,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    backgroundImage: AssetImage("images/avatar.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Michael,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Welcome back!,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.ad_units_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 20),
                // height: 500,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My cards",
                      style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 180,
                      child: CarouselSlider.builder(
                          itemCount: debitList.length,
                          options: CarouselOptions(
                              aspectRatio: 2,
                              viewportFraction: .9,
                              enableInfiniteScroll: false),
                          itemBuilder: (context, index, _) {
                            return Container(
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 150,
                              // width: 300,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: debitList[index].color,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Debit card",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            width: 47,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  right: 10,
                                                  child: Icon(
                                                    Icons.circle,
                                                    color: Colors.white70,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.circle,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(debitList[index].cardNum,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              )),
                                          Text(debitList[index].date,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text("\$ ${debitList[index].rupees}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 55,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 55,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pink.withOpacity(.2),
                              ),
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: re[index].col),
                                  child: Icon(
                                    re[index].icon,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: re.length),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Transactions",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return TransactionCard(
                              se: se,
                              index: index,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: se.length),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  TransactionCard({
    Key? key,
    required this.se,
    required this.index,
  }) : super(key: key);

  final List<Sec> se;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.asset(
              se[index].imgsrc,
              // scale: 1.5,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  se[index].t1,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  se[index].t2,
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$ ${se[index].t3}',
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                se[index].t4,
                style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

class Rec {
  IconData icon;
  Color? col;
  Rec({
    required this.icon,
    required this.col,
  });
}

class Sec {
  IconData icon;
  Color? col;
  Color? col1;
  String t1;
  String t2;
  String t3;
  String t4;
  String imgsrc;
  Sec(
      {required this.icon,
      required this.col,
      required this.col1,
      required this.t1,
      required this.t2,
      required this.t3,
      required this.t4,
      required this.imgsrc});
}

class DebiCard {
  String cardNum;
  String date;
  String rupees;
  Color color;
  DebiCard(
      {required this.cardNum,
      required this.date,
      required this.rupees,
      required this.color});
}
