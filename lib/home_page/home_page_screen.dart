import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
      
            const Categories(categoriesImage: NetworkImage('assets/images/paper.png'),
              width: double.infinity,
              height: 100,
              title:'Papers',
              onTap: null,
              description: 'bla bla bla bla bka bla bla bla',),
      
            const Categories(categoriesImage: NetworkImage('assets/images/paper.png'),
              width: double.infinity,
              height: 100,
              title:'Papers',
              onTap: null,
              description: 'bla bla bla bla bla bla bla bla',),
      
            Container(
                alignment: Alignment.topLeft,
                child: const Text('Most Taken')),
            GridView.builder(
              itemCount:5,
              shrinkWrap: true,physics: const ClampingScrollPhysics(),
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                  child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child:Image(
                          image:NetworkImage('assets/images/paper.png'),
                          fit: BoxFit.fill,
                          width: 70,
                          height: 70
                      )
      
                  ),
                );
      
              },),
      
          ],
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
  final NetworkImage categoriesImage;
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
            Text(description,
              style: const TextStyle(color: Colors.black54),)
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
    const List<NetworkImage> images=[NetworkImage('assets/images/comingsoon.jpg'),
      NetworkImage('assets/images/comingsoon.jpg')];
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