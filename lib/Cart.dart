import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String,int>> orderAllData=[{'ID':1,'Total':100},{'ID':2,'Total':125}];


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title:Row(

          children: [
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.arrow_back_ios)),
            const Text('Cart',)
          ],
        ),
      ),
      body:
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          child: SizedBox(
        
            width: 350,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {

                int id=orderAllData[index].entries.first.value;


        
              return Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
        
        
                  onTap: () {
                    print(index);
        
                  },
                  child: Container(
                   // margin: EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.only(bottom: 20),
                    decoration: const BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(16)),
                      color: Color(0xFFFEC422),),
        
                    child: Column(
                      children: [
        
                        Container(
                          decoration:
                          const BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(15)),
                          color: Colors.white),
        
                          child: Card(
                            margin: EdgeInsets.zero,
        
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Order #$id'
                                    ,style:const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFEC422)
                                    ) ,),
                                  const SizedBox(height: 10,),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      int quantity=100;
                                      String color='blue';
                                      double price=2;
        
                                    return Container(
        
                                      margin: const EdgeInsets.only(bottom: 12),
        
                                      child: Column(
                                        children: [
        
                                          Container(
                                            margin:EdgeInsets.only(left: 30),
                                            child: Row(
        
                                              children: [
                                                ClipRRect(
        
                                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                                  child:Image(
                                                    image: AssetImage('assets/images/alpha.png'),
                                                    height: 70,
                                                    width: 70,
                                                    fit: BoxFit.fill,
                                                  ) ,),
                                                const SizedBox(width: 10,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
        
                                                    Text('alpha pin',
                                                      style:TextStyle(
                                                          fontWeight:FontWeight.bold) ,
                                                    ),
                                                    Text('quantity $quantity PCS',
                                                      style: const TextStyle(
                                                          fontSize: 10
                                                      ),),
                                                    Text('Color $color ',
                                                    style: const TextStyle(
                                                      fontSize: 10
                                                    ),),
                                                    Text('Price $quantity x $price',
                                                      style: const TextStyle(
                                                          fontSize: 10
                                                      ),),
        
        
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
        
        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                              Text('250.00 LDY',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
        
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },),
          ),
        ),
      )
    );
  }
}




