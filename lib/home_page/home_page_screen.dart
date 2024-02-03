import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10,10,10,0),
      child:  const Column(
        children: [

          AdsRow(),
          SizedBox(height: 5,),
          Text('It\'s always a good day\nto print with printly',
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
            maxLines:2,),

          Text('You design we print , it’s that easy',
            style:TextStyle(color: Colors.grey) ,),

          SizedBox(height: 20,),

          Categories(categoriesImage: NetworkImage('assets/images/comingsoon.jpg'), onTap: null,),
          SizedBox(height: 20,),
          Categories(categoriesImage: NetworkImage('assets/images/comingsoon.jpg'), onTap: null,),
        ],
      ),
    );
  }
}



class Categories extends StatelessWidget {
  const Categories({super.key, required this.categoriesImage,required this.onTap});

  final NetworkImage categoriesImage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child:Image(image: categoriesImage,
          fit: BoxFit.fill,
          width: double.infinity,
          height: 130,
        ) ,
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
    List<NetworkImage> images=[NetworkImage('assets/images/comingsoon.jpg'),
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
                  fit: BoxFit.fill,
                ) ,
              ),
            ),
      ),

    );
  }
}
