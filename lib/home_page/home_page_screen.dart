import 'package:flutter/material.dart';
import 'package:printly/all_proudact/all_prodact_screen.dart';
import 'package:printly/cart/cart.dart';
import 'package:printly/desgin/desgin_screen.dart';
import 'package:printly/home_page/HomePage.dart';
import 'package:printly/profile/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> home = const [
    HomePage(),
    DesginPage(),
    AllProudact(),
    Profile()
  ];
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.brush_outlined,
                color: Colors.black,
              ),
              label: "Design"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: "All Product"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              label: "profile")
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int page) {
          setState(() {
            currentScreen = page;
          });
        },
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
    List<AssetImage> images = const [
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