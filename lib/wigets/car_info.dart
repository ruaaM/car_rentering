import 'package:flutter/material.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({Key? key}) : super(key: key);

  @override
  _CarInfoState createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(280),
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
                      children: const [],
                    ),
                  )),
            ]),
          ),
          leading: const Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 27,
              ),
              onPressed: null,
            ),
          ),
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
            padding: const EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: const [
                  Text(
                    'Trip Dates',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: SizedBox(
                    width: 320,
                    height: 80,
                    child: Card(
                      elevation: 0.0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 13),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.pink.shade300),
                                      child: const Icon(
                                        Icons.date_range_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Text(
                                  '03-07-2020 - 05-07-2020',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 15),
                                child: ClipRRect(
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
                              ),
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: const [
                  Text(
                    'Pickup & Return',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: SizedBox(
                    width: 320,
                    height: 80,
                    child: Card(
                      elevation: 0.0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18, left: 13),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.pink.shade300),
                                      child: const Icon(
                                        Icons.date_range_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Text(
                                  '03-07-2020 - 05-07-2020',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 15),
                                child: ClipRRect(
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
                              ),
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
                padding: const EdgeInsets.only(top: 78.1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: SizedBox(
                    width: 360,
                    height: 80,
                    child: Card(
                      elevation: 0.0,
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 14, left: 13),
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black45),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Row(
                              children: [
                                const Text(
                                  '399',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black87),
                                ),
                                const Text(
                                  '/trip',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black45),
                                ),
                                const Expanded(
                                  child: Text(''),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 4, right: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: SizedBox(
                                      width: 150,
                                      height: 40,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.red.shade900,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 18, top: 10),
                                          child: Text(
                                            'Go to checkout',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
