import 'package:flutter/material.dart';
import 'package:submission/const/colors.dart';
import 'package:submission/model/data.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: const Center(
                  child: Text(
                    "My Bookings",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                  children: bookingList
                      .map(
                        (item) => (Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: blackGrey,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 50.0,
                                          backgroundImage:
                                              AssetImage(item['image']),
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        item['name'],
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          color: white,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        item['date'],
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: white,
                                          fontFamily: 'Nunito',
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        item['time'],
                                        style: const TextStyle(
                                          fontSize: 10.0,
                                          color: whiteGrey,
                                          fontFamily: 'Nunito',
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        item['job'],
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: primaryOrange,
                                          fontFamily: 'Nunito',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      item['status'],
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        color: item['status'] == 'Complete'
                                            ? white
                                            : primaryOrange,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                      )
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
