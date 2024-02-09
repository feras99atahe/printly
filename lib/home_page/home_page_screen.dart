import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:printly/all_proudact/all_prodact_screen.dart';
import 'package:printly/cart/Cart.dart';
import 'package:printly/home_page/HomePage.dart';
import 'package:printly/nav_bar/nav_bar.dart';
import 'package:printly/papers_prints/papers_prints.dart';
import 'package:printly/profile/profile_screen.dart';
import 'package:printly/promotional_gifts/promotioonl_gifts.dart';
import 'package:printly/proudact_details/proudact_detailes_screen.dart';

import '../prodact_model.dart';

class Home extends StatelessWidget {
  Home({super.key});
List<Widget> home=[HomePage(),Profile()];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<ProductModel> products;
    products = [
      new ProductModel(
          AssetImage('assets/images/A5leather_notebook.jpg'),
          'A5 Leather Notebook',
          'Starting from 25.00 LYD A5 size leather diary available in several colors with the ability to print a colorful logo',
          25),
      new ProductModel(
          AssetImage('assets/images/A6notebooks.jpg'),
          'A6 Leather Notebooks',
          'Starting from 15.00 LYD Leather diary, size 9 x 14, available in several colors, with the possibility of printing the logo in color',
          15),
      new ProductModel(
          AssetImage('assets/images/alfa_metel_pen.jpg'),
          'Alfa Metel Pen',
          'Starting from 2.00 LYD Excellent quality metel pen with the ability to print the logo with laser engraving',
          2),
      new ProductModel(
          AssetImage('assets/images/alfa_plastic_pen.jpg'),
          'Alfa Plastic Pen',
          'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo',
          2),
      new ProductModel(
          AssetImage('assets/images/round_plastic_pen.png'),
          'Round Plastic Pen',
          'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo',
          2.50),
      new ProductModel(
          AssetImage('assets/images/turbo_plastic_pen.png'),
          'Purbo Plastic Pen',
          'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo',
          2),
      new ProductModel(AssetImage('assets/images/mug.jpg'), 'Mug', '', 15),
      new ProductModel(
          AssetImage('assets/images/personal_card.jpg'),
          'Personal Card',
          'Starting from 0.35 LYD Print personal cards, size 9 x 5 cm',
          0.35),
      new ProductModel(
          AssetImage('assets/images/stationery.jpg'),
          'Correspondence',
          'Starting from 0.70 LYD Printing corporate correspondence paper with the ability to choose the paper material',
          0.50),
      new ProductModel(
          AssetImage('assets/images/stiker.jpg'),
          'StikerS',
          'Starting from 0.50 LYDPrint circular labels to enhance your brand',
          0.70),
    ];

int currentScreen =0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon:Icon( Icons.home_outlined),label: "home"),
        BottomNavigationBarItem(icon:Icon( Icons.brush_outlined,),label: "profile"), BottomNavigationBarItem(icon:Icon( Icons.menu,),label: "All Product"), BottomNavigationBarItem(icon:Icon( Icons.person_outline,),label: "profile")],onTap: (value){
        currentScreen=value;

      },),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none_outlined,
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          fit: BoxFit.cover,
          'assets/images/Logo 1.png',
          height: 32,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
  body: home[currentScreen],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories(
      {super.key,
      required this.categoriesImage,
      required this.onTap,
      required this.title,
      required this.description,
      required this.height,
      required this.width});

  final double height;
  final double width;
  final AssetImage categoriesImage;
  final String title;
  final String description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(bottom: 8),
        decoration: const BoxDecoration(
            color: Color(0xFFFEC422),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image(
                image: categoriesImage,
                fit: BoxFit.fill,
                width: width,
                height: height,
              ),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AdsRow extends StatelessWidget {
  const AdsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return row();
  }

  Widget row() {
    List<AssetImage> images = [
      AssetImage('assets/images/comingsoon.jpg'),
      AssetImage('assets/images/comingsoon.jpg')
    ];
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image(
              image: images[index],
              width: MediaQuery.of(context).size.width - 20,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
