
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth / 3,
                  height: screenHeight / 3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: screenWidth / 3,
                          height: screenHeight / 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              'assets/images/profile.png',
                              width: screenWidth / 3,
                              height: screenHeight / 3,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: FloatingActionButton.small(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFFCBA03)),
                              borderRadius: BorderRadius.circular(100)),
                          backgroundColor: Color(0xFFFCBA03),
                          onPressed: () {},
                          child: Icon(Icons.edit_outlined),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Text(
                    'Feras Alaswed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const Text(
                  'feras99ataher@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: screenWidth / 3,
                      height: screenHeight / 16,
                      decoration: BoxDecoration(
                          color: Color(0xFFFCBA03),
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(56, 8, 56, 8),
                  child: InkWell(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            color:Color.fromARGB(100,252, 186, 3),
                            borderRadius: BorderRadius.circular(100),
                          ) ,

                          width: screenWidth/11,
                          height: screenHeight/14,
                          child: Icon(
                            Icons.settings_outlined,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,

                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(56, 8, 56, 8),
                  child: InkWell(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            color:Color.fromARGB(100,252, 186, 3),
                            borderRadius: BorderRadius.circular(100),
                          ) ,

                          width: screenWidth/11,
                          height: screenHeight/14,
                          child: Icon(Icons.info_outline_rounded,
                          size: 30,),
                        ),
                        Text(
                          'Information',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,

                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(56, 8, 56, 8),
                  child: InkWell(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            color:Color.fromARGB(100,252, 186, 3),
                            borderRadius: BorderRadius.circular(100),
                          ) ,

                          width: screenWidth/11,
                          height: screenHeight/14,
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Locatin',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.fromLTRB(56, 8, 56, 8),
                  child: InkWell(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            color:Color.fromARGB(100,252, 186, 3),
                            borderRadius: BorderRadius.circular(100),
                          ) ,
                         
                          width: screenWidth/11,
                          height: screenHeight/14,
                          child: Icon(Icons.shopping_cart_outlined,
                          size: 30,),
                        ),
                        Text(
                          'Orders',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Log Out',
                          style: TextStyle(
                            color: Colors.red,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.login_rounded),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
