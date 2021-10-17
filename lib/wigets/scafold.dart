// ignore_for_file: prefer_const_constructors

import 'package:car/wigets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCarAppBar(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.blueGrey.shade50,
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(180),
      child: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/waves.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                top: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, right: 150),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Choose a Car',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.black54,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Dora,Baghdad',
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                    Expanded(child: Text("")),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4, right: 13),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: SizedBox(
                                          width: 30,
                                          height: 30,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.pink.shade300),
                                            child: Icon(
                                              Icons.date_range_outlined,
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: 55,
                            width: 270,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.tune_rounded,
                                  color: Colors.white,
                                  size: 40,
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ]),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 15, top: 20),
          child: IconButton(
            icon: Icon(
              Icons.segment_outlined,
              color: Colors.white,
              size: 27,
            ),
            onPressed: null,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/girlAvatar.png'),
            ),
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
        ),
      ),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: const [
              Text(
                '23 Results',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              Expanded(child: Text('')),
              Icon(
                Icons.more_horiz_rounded,
                color: Colors.black54,
                size: 25,
              )
            ],
          ),
        ),
        buildCarCard(context),
      ],
    ),
  );
}
