import 'package:flutter/material.dart';

import '../prodact_model.dart';
import '../proudact_details/proudact_detailes_screen.dart';

class PapersPrints extends StatelessWidget {
  const PapersPrints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<ProductModel> products;
    products=[
      new ProductModel(AssetImage('assets/images/personal_card.jpg'),
          'Personal Card', 'Starting from 0.35 LYD Print personal cards, size 9 x 5 cm', 0.35),
      new ProductModel(AssetImage('assets/images/stationery.jpg'),
          'Correspondence', 'Starting from 0.70 LYD Printing corporate correspondence paper with the ability to choose the paper material', 0.50),
      new ProductModel(AssetImage('assets/images/stiker.jpg'), 'StikerS',
          'Starting from 0.50 LYDPrint circular labels to enhance your brand', 0.70),
    ];



    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    height: 10,
                    width: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20)),
                    child: Image.asset(
                      'assets/images/all_proudat_image_background.png',
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
                const Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20)),
                    child: Image.asset(
                      'assets/images/all_proudat_image_background.png',
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
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(' PRODUCT'),
          ),
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
                onTap: (){
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
    );
  }
}
