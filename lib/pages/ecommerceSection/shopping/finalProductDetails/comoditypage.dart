import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insidehouse/data/dealsData.dart';

class ComodityPage extends StatefulWidget {
  final String img;
  final int index;

  ComodityPage({this.img, this.index});

  @override
  _ComodityPageState createState() => _ComodityPageState();
}

class _ComodityPageState extends State<ComodityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: new FlexibleSpaceBar(
                  title: new Text(
                    "Item ${widget.index}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'AlexBrush',
                        fontSize: 30.0),
                  ),
                  background: new Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ))),
          new SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: new SliverChildBuilderDelegate(
                (context, index) => Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.0, vertical: 1.5),
                                height: 100.0,
                                child: Image.asset(clothsData[index].img),
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    'Men Pants',
                                    style: new TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Sacramento',
                                        fontSize: 25.0),
                                  ),
                                  subtitle: new Text(
                                    'Ksh 450.00',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'DancingScript',
                                        fontSize: 10.0),
                                  ),
                                  trailing: Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.orange,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 0.0,
                          color: Colors.white,
                           indent: 110.0,
                        )
                      ],
                    ),
                childCount: 1),
          )
        ],
      ),
    );
  }
}