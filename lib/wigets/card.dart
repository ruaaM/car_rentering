import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'car_info.dart';

Widget buildCarCard(BuildContext context) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: SizedBox(
                width: 310,
                height: 210,
                child: Card(
                  elevation: 0.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Text(
                                '  4.5  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.orange,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Expanded(child: Text('')),
                            Text(
                              '18 Deals',
                              style: TextStyle(
                                  color: Colors.green.shade400, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/lamborghini.png',
                              width: 230,
                              height: 83,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ListTile(
                            title: const Text(
                              'Black Lamborghini',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text('from 199/day'),
                            trailing: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade900,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CarInfo()),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.double_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: SizedBox(
                width: 310,
                height: 210,
                child: Card(
                  elevation: 0.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Text(
                                '  4.3  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.orange,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Expanded(child: Text('')),
                            Text(
                              '10 Deals',
                              style: TextStyle(
                                  color: Colors.green.shade400, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'images/car2.png',
                              width: 230,
                              height: 83,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ListTile(
                            title: const Text(
                              'Grey Audi',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text('from 179/day'),
                            trailing: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade900,
                                  ),
                                  child: const IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.double_arrow_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
