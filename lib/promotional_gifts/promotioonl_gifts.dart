import 'package:flutter/material.dart';
import 'package:printly/prodact_model.dart';

import '../proudact_details/proudact_detailes_screen.dart';

class PromotionalGifts extends StatelessWidget {
  const PromotionalGifts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    List<ProductModel> products;
    products=[new ProductModel(
        AssetImage('assets/images/A5leather_notebook.jpg'),
        'A5 Leather Notebook', 'Starting from 25.00 LYD A5 size leather diary available in several colors with the ability to print a colorful logo', 25),
      new ProductModel(
          AssetImage('assets/images/A6notebooks.jpg'),
          'A6 Leather Notebooks', 'Starting from 15.00 LYD Leather diary, size 9 x 14, available in several colors, with the possibility of printing the logo in color'
    , 15),
      new ProductModel(
          AssetImage('assets/images/alfa_metel_pen.jpg'),
          'Alfa Metel Pen', 'Starting from 2.00 LYD Excellent quality metel pen with the ability to print the logo with laser engraving', 2),
      new ProductModel(
          AssetImage('assets/images/alfa_plastic_pen.jpg'),
          'Alfa Plastic Pen', 'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo'
    , 2),
      new ProductModel(
          AssetImage('assets/images/round_plastic_pen.png'),
          'Round Plastic Pen', 'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo', 2.50),
      new ProductModel(
          AssetImage('assets/images/turbo_plastic_pen.png'),
          'Purbo Plastic Pen', 'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo', 2),
      new ProductModel(
          AssetImage('assets/images/mug.jpg'),
          'Mug', '', 15),];


    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Promotinal Gifts'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Stack(
              children: [
                // Positioned(
                //   top: 0,
                //   left: 0,
                //   child: SizedBox(
                //     height: 10,
                //     width: 20,
                //     child: Padding(
                //       padding: const EdgeInsets.all(16.0),
                //       child: IconButton(
                //         onPressed: () {
                //           Navigator.pop(context);
                //         },
                //         icon: const Icon(
                //           Icons.arrow_back_ios,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20)),
                    child: Image.asset(
                      'assets/images/Promotional gifts.png',
                      width: screenWidth,
                      height: screenHeight / 4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: screenHeight / 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: screenHeight / 4,
                      width: screenHeight / 4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenHeight / 8),
                      ),

                    ),
                  ),
                ),

                Positioned(
                  right: 10,
                  top: screenHeight / 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: screenHeight / 4,
                      width: screenHeight / 4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(screenHeight / 8),

                      ),
                      child:  Image(image: AssetImage('assets/images/Logo 1.png'),
                        fit: BoxFit.cover,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(' PromotionalGifts'),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            primary: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 0.6),
            // padding: const EdgeInsets.all(8.0),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Container(
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
                    height: 100,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:
                            MediaQuery.of(context).size.height / 3.75,
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
    );
  }
}
