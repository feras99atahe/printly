import 'package:flutter/material.dart';
import 'package:printly/home_page/home_page_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:printly/all_proudact/all_prodact_screen.dart';
import 'package:printly/cart/Cart.dart';
import 'package:printly/nav_bar/nav_bar.dart';
import 'package:printly/papers_prints/papers_prints.dart';
import 'package:printly/promotional_gifts/promotioonl_gifts.dart';
import 'package:printly/proudact_details/proudact_detailes_screen.dart';

import '../prodact_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<ProductModel>
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: [
            const AdsRow(),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'It\'s always a good day\nto print with printly',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
              maxLines: 2,
            ),
            const Text(
              'You design we print , it’s that easy',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Categories(
              categoriesImage: AssetImage('assets/images/paper.png'),
              width: double.infinity,
              height: 100,
              title: 'Papers Prints',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PapersPrints(),
                    ));
              },
              description:
              'A group of paper publications, such as personal cards or correspondence papers',
            ),
            Categories(
              categoriesImage:
              const AssetImage('assets/images/Promotional gifts.png'),
              width: double.infinity,
              height: 100,
              title: 'Promotional gifts',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PromotionalGifts(),
                    ));
              },
              description:
              'A collection of promotional gifts such as mugs and power bank and keychains',
            ),
            Container(
                alignment: Alignment.topLeft,
                child: const Text('Most Taken')),
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              primary: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 0.8
              ),
              // padding: const EdgeInsets.all(8.0),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return
                  Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFFCBA03),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProudactDetailes(product: products[index])),
                        );
                      },
                      child: SizedBox(
                        height: 200,
                        child: Column(

                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 3.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: products[index].image,
                                      fit: BoxFit.cover),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: const Offset(0, 5),
                                    ),
                                    const BoxShadow(
                                      color: Color(0xFFFCBA03),
                                      offset: Offset(-5, 0),
                                    ),
                                    const BoxShadow(
                                      color: Color(0xFFFCBA03),
                                      offset: Offset(5, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                products[index].title,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                '${products[index].price} LD',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );

              },
            ),
          ],
        ),
      ),
    ),);
  }
}
