import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:printly/profile/profile_screen.dart';

import '../home_page/home_page_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          color: Colors.white38,
          child:  Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5),
            child: GNav(
// backgroundColor: Color(0xFFFEC422),
              color: Colors.black,
              activeColor: Color(0xFFFEC422),
              tabBackgroundColor: Colors.white38,
              gap: 2,
              padding: EdgeInsets.all(8),

              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home())); // Navigate to the home page
                  },
                  icon: Icons.home_outlined,
                  iconSize: 40,
                  text: 'Home',),
                GButton(


                  icon:Icons.draw_outlined,
                  text: 'Desing',
                  iconSize: 40,),
                GButton(
                  onPressed: () {
                    GoRouter.of(context).go('/all_proudact'); // Navigate to the home page
                  },
                  icon: Icons.menu_outlined,
                  text: 'All products',
                  iconSize: 40,),
                GButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    // Navigate to the home page
                  },
                  icon: Icons.person_outline,
                  text: 'Profile',
                  iconSize: 40,),

              ],
            ),
          ),
        );
  }
}

