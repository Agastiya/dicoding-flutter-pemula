import 'package:flutter/material.dart';
import 'package:submission/component/favorite_button.dart';
import 'package:submission/const/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:submission/model/data.dart';
import 'package:submission/pages/view_all_supplier.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      AssetImage('assets/images/user/avatar-7.jpg'),
                  backgroundColor: Colors.transparent,
                ),
                title: const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: whiteGrey,
                    fontFamily: 'Nunito',
                  ),
                ),
                subtitle: const Text(
                  'Putra Agastiya',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: white,
                    fontFamily: 'Nunito',
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 20,
                  backgroundColor: blackGrey,
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: primaryOrange,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 20, 8, 25),
                      child: TextField(
                        cursorColor: Colors.grey,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: blackGrey,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hintText: 'Search',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(10),
                            width: 15,
                            child: const Icon(
                              Icons.search,
                              color: primaryOrange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: primaryOrange,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: categoriesList
                      .map((item) => Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 7),
                                child: Expanded(
                                  flex: 4,
                                  child: Image.asset(
                                    item['image'],
                                    fit: BoxFit.cover,
                                    width: 50,
                                  ),
                                ),
                              ),
                              Text(
                                item['title'],
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: white,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                            ],
                          ))
                      .toList()),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'Home Service',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: primaryOrange,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 1,
                    autoPlay: false,
                  ),
                  items: homeServiceList
                      .map(
                        (item) => SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: blackGrey,
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: white,
                                        image: DecorationImage(
                                          image: AssetImage(item['image']),
                                          fit: BoxFit.fill,
                                        ),
                                        border: Border.all(
                                          color: Colors.black87,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        item['title'],
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Nunito',
                                        ),
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList()),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Popular Supplier',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: primaryOrange,
                        textStyle: const TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ViewAllSupplier();
                        }));
                      },
                      child: const Text('View All'),
                    ),
                  ],
                ),
              ),
              Column(
                children: supplierList
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
