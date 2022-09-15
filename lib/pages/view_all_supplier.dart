import 'package:flutter/material.dart';
import 'package:submission/const/colors.dart';
import 'package:submission/model/data.dart';
import '../component/favorite_button.dart';

class ViewAllSupplier extends StatelessWidget {
  const ViewAllSupplier({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Popular Supplier",
          style: TextStyle(
            fontSize: 20.0,
            color: white,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: Column(
            children: <Widget>[
              Column(
                children: viewAllSupplierList
                    .map(
                      (item) => (SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: blackGrey,
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: white,
                                    image: DecorationImage(
                                      image: AssetImage(item['image']),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                      color: Colors.black87,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            item['name'],
                                            style: const TextStyle(
                                              fontSize: 18.0,
                                              color: white,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Text(
                                            item['job'],
                                            style: const TextStyle(
                                              fontSize: 15.0,
                                              color: primaryOrange,
                                              fontFamily: 'Nunito',
                                            ),
                                          ),
                                          trailing: const CircleAvatar(
                                            radius: 20,
                                            backgroundColor: black,
                                            child: FavoriteButton(),
                                          ),
                                          isThreeLine: true,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  const Text(
                                                    'Rating',
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: whiteGrey,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      const Icon(
                                                        Icons.star,
                                                        color: primaryOrange,
                                                        size: 14.0,
                                                      ),
                                                      Text(
                                                        item['rating'],
                                                        style: const TextStyle(
                                                          fontSize: 13.0,
                                                          color: white,
                                                          fontFamily: 'Nunito',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  const Text(
                                                    'Total Jobs',
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: whiteGrey,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                  Text(
                                                    item['totalJob'],
                                                    style: const TextStyle(
                                                      fontSize: 13.0,
                                                      color: white,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  const Text(
                                                    'Rate',
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: whiteGrey,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                  Text(
                                                    item['rate'],
                                                    style: const TextStyle(
                                                      fontSize: 13.0,
                                                      color: white,
                                                      fontFamily: 'Nunito',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
