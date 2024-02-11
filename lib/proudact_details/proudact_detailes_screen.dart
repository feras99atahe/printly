import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printly/cart/Cart.dart';
import 'package:printly/desgin/desgin_screen.dart';

import '../prodact_model.dart';

class ProudactDetailes extends StatefulWidget {

  final ProductModel product;

  ProudactDetailes({required this.product});

  @override
  State<ProudactDetailes> createState() => _ProudactDetailesState();
}

class _ProudactDetailesState extends State<ProudactDetailes> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int selectedIndex = -1;
    List<Color> circleColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple,
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Prodact Detailes'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: screenHeight / 2,
              child: Image(
                fit: BoxFit.fill,
                image:widget.product.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x1A000000),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                    widget.product.title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Color(0xFFFCBA03),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Text('NofO'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Color(0xFFFCBA03),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Text('NofV'),
                          ),
                          Spacer(),
                          Text(widget.product.price.toString(),),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(widget.product.description,

                      ),
                      const Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black,
                      ),
                      SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                          child: Row(children:[
                            Text('Colors'),
                            CircleSelectionDemo(),
                          ],
                          ),
                      ),
                      const Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Quantity'),
                            QuantitySelectionDemo(),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 16,
                        endIndent: 16,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (con)=> CartScreen()));
                              },
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFCBA03),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text('Add To Cart'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (con)=> DesginPage()));
                              },
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text('Start Design',style: TextStyle(
                                    color: Colors.white
                                  ),),
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
          ],
        ),
      ),
    );
  }
}

class CircleSelectionDemo extends StatefulWidget {
  @override
  _CircleSelectionDemoState createState() => _CircleSelectionDemoState();
}

class _CircleSelectionDemoState extends State<CircleSelectionDemo> {
  int selectedIndex = -1;

  List<Color> circleColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(circleColors.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Stack(
              children: [
                Opacity(
                  opacity: selectedIndex == index ? 0.3 : 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black45, // Background color
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  // Adjust position horizontally
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: circleColors[index],
                        ),
                        padding: EdgeInsets.all(1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class QuantitySelectionDemo extends StatefulWidget {
  @override
  _QuantitySelectionDemoState createState() => _QuantitySelectionDemoState();
}

class _QuantitySelectionDemoState extends State<QuantitySelectionDemo> {
  int selectedIndex = -1;

  List<int> Quantity = [25, 50, 100];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(Quantity.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Stack(
              children: [
                Opacity(
                  opacity: selectedIndex == index ? 0.3 : 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  // Adjust position horizontally
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            Quantity[index].toString(),
                          ),
                        ),
                        padding: EdgeInsets.all(1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

// class ProudactDetailes extends StatelessWidget {
//   const ProudactDetailes({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     int selectedIndex = -1;
//     List<Color> circleColors = [
//       Colors.red,
//       Colors.blue,
//       Colors.green,
//       Colors.yellow,
//       Colors.purple,
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Prodact Detailes'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_rounded),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.favorite_border),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//
//           children: [
//             Expanded(
//               flex: 1,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   width: screenWidth,
//                   height: screenHeight / 2,
//                   child: Image(
//                     fit: BoxFit.fill,
//                     image: NetworkImage('assets/images/pen.png'),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Column(
//                   children: [
//                     Container(
//
//                       decoration: BoxDecoration(
//                           color: Color(0x1A000000),
//                           borderRadius: BorderRadius.circular(20)),
//                       width: screenWidth,
//                       child:  Padding(
//                         padding: EdgeInsets.all(16.0),
//                         child: Column(
//                           children: [
//                             Text(
//                               'proudact name',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(16.0),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.shopping_cart_outlined),
//                                   //number of order
//                                   Text('NofO'),
//                                   Icon(Icons.remove_red_eye_outlined),
//                                   //number of visist
//                                   Text('NofV'),
//                                   Spacer(),
//                                   //price
//                                   Padding(
//                                     padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
//                                     child: Text('PRICE'),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Text(
//                               'Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo Starting from 2.00 LYD Excellent quality plastic pen with the ability to print the logo',
//                               softWrap: true,
//                             ),
//
//                             Divider(
//                               indent: 16,
//                               endIndent: 16,
//                               color: Colors.black,
//                             ),
//                             Row(
//                               children: [
//                                 Text('Colors'),
//                                 Center(
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                     children: List.generate(circleColors.length, (index) {
//                                       return GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             selectedIndex = index;
//                                           });
//                                         },
//                                         child: Stack(
//                                           children: [
//                                             Opacity(
//                                               opacity: selectedIndex == index ? 0.3 : 0,
//                                               child: Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   shape: BoxShape.circle,
//                                                   color: Colors.black, // Background color
//                                                 ),
//                                               ),
//                                             ),
//                                             Positioned(
//                                               top: 10, // Adjust position vertically
//                                               left: 10, // Adjust position horizontally
//                                               child: Container(
//                                                 width: 80,
//                                                 height: 80,
//                                                 decoration: BoxDecoration(
//                                                   shape: BoxShape.circle,
//                                                   color: circleColors[index],
//
//                                                 ),
//                                                 padding: EdgeInsets.all(4.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       );
//                                     }),
//                                   ),
//                                 ),
//
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
