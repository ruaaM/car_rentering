import 'package:car/wigets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCarAppBar(BuildContext context) {
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(200),
      child: AppBar(
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/waves.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        leading: const IconButton(
          icon: Icon(
            Icons.segment_outlined,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/girlAvatar.png'),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  'Choose a Car',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                Row(
                  children: [
                    buildSearchbox(context),
                    const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.tune_rounded,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
