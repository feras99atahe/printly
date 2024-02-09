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
class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<ProductModel> products;
    products=[new ProductModel(
        AssetImage('assets/images/A5leather_notebook.jpg'),
        'A5 Leather Notebook', 'description', 25),
      new ProductModel(
          AssetImage('assets/images/A6notebooks.jpg'),
          'A6 Leather Notebooks', 'description', 15),
      new ProductModel(
          AssetImage('assets/images/alfa_metel_pen.jpg'),
          'Alfa Metel Pen', 'description', 2),
      new ProductModel(
          AssetImage('assets/images/alfa_plastic_pen.jpg'),
          'Alfa Plastic Pen', 'description', 2),
      new ProductModel(
          AssetImage('assets/images/round_plastic_pen.png'),
          'Round Plastic Pen', 'description', 2.50),
      new ProductModel(
          AssetImage('assets/images/turbo_plastic_pen.png'),
          'Purbo Plastic Pen', 'description', 2),
      new ProductModel(
          AssetImage('assets/images/mug.jpg'),
          'Mug', 'description', 15),
      new ProductModel(
          AssetImage('assets/images/personal_card.jpg'),
          'Personal Card', 'description', 0.35),
      new ProductModel(
          AssetImage('assets/images/stationery.jpg'),
          'Stationeries', 'description', 0.50),
      new ProductModel(
          AssetImage('assets/images/stiker.jpg'),
          'StikerS', 'description', 0.70),
      new ProductModel(
          AssetImage('assets/images/personal_card.jpg'),
          'Personal Card', 'description', 0.35),
      new ProductModel(
          AssetImage('assets/images/stationery.jpg'),
          'Stationeries', 'description', 0.50),
      new ProductModel(
          AssetImage('assets/images/stiker.jpg'),
          'StikerS', 'description', 0.70),];
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  IconButton( onPressed: () {  }, icon: Icon(Icons.notifications_none_outlined,),),
        centerTitle: true,
        title:
        Image.asset(
          fit: BoxFit.cover,
          'assets/images/Logo 1.png',
          height: 32,
        ),
        actions:  [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => CartScreen(),));
          }, icon: Icon(Icons.shopping_cart_outlined))

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10,10,10,0),
          child:   Column(

            children: [

              const AdsRow(),
              const SizedBox(height: 5,),
              const Text('It\'s always a good day\nto print with printly',
                style: TextStyle(
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines:2,),

              const Text('You design we print , it’s that easy',
                style:TextStyle(color: Colors.grey) ,),

              const SizedBox(height: 20,),

              Categories(categoriesImage: AssetImage('assets/images/paper.png'),
                width: double.infinity,
                height: 100,
                title:'Papers Prints',
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>PapersPrints(),));

                },
                description: 'A group of paper publications, such as personal cards or correspondence papers',),

               Categories(categoriesImage: const AssetImage('assets/images/Promotional gifts.png'),
                width: double.infinity,
                height: 100,
                title:'Promotional gifts',
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>PromotionalGifts(),));
                },
                description: 'A collection of promotional gifts such as mugs and power bank and keychains',),

              Container(
                  alignment: Alignment.topLeft,
                  child: const Text('Most Taken')),
              GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                padding: const EdgeInsets.all(8.0),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  ProudactDetailes(product: products[index])
                        ),
                      );

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFCBA03),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenWidth / 3.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image:  DecorationImage(
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
                                fontSize: 20,
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
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class Categories extends StatelessWidget {
  const Categories({super.key, required this.categoriesImage,
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
        decoration: const BoxDecoration(color: Color(0xFFFEC422),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child:Image(image: categoriesImage,
                fit: BoxFit.fill,
                width: width,
                height: height,
              ) ,
            ),

            Text(title,
              style:const TextStyle(fontSize: 25) ,),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 0,horizontal: 5),
              child: Text(description,textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black54),),
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

  Widget row(){
     List<AssetImage> images=[AssetImage('assets/images/comingsoon.jpg'),
       AssetImage('assets/images/comingsoon.jpg')];
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) =>
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: ClipRRect(

                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child:Image(image: images[index],
                  width: MediaQuery.of(context).size.width-20,
                  fit: BoxFit.fill,

                ) ,
              ),
            ),
      ),

    );
  }
}