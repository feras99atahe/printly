import 'package:flutter/material.dart';

class AllProudact extends StatelessWidget {
  const AllProudact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
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
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'assets/images/all_proudat_image_background.png'),
                              fit: BoxFit.fill),
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
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        'data',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        'data',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
