import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:printly/printly_icon_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white38,
          child: const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5),
            child: GNav(
// backgroundColor: Color(0xFFFEC422),
              color: Colors.black,
              activeColor: Color(0xFFFEC422),
              tabBackgroundColor: Colors.white38,
              gap: 8,
              padding: EdgeInsets.all(16),

              tabs: [
                GButton(
                  icon: Icons.home,
                  iconSize: 40,
                  text: 'Home',),
                GButton(
                  icon:Printly_icon.brush,
                  text: 'Draft',
                  iconSize: 40,),
                GButton(
                  icon: Printly_icon.proudact,
                  text: 'All products',
                  iconSize: 40,),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  iconSize: 40,),

              ],
            ),
          ),
        ),
    );
  }
}

