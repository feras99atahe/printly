import 'package:flutter/material.dart';

import '../password/PasswordField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final phoneController=TextEditingController();
    final addressController=TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Image(image: const NetworkImage('assets/images/login logo.png'),
              height:MediaQuery.of(context).size.height/2.5,
              width: double.infinity,
              fit: BoxFit.fill,),
        
        
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text('Create',
                    style:TextStyle(fontSize: 50) ,),
                  const Text('Account !',
                      style:TextStyle(fontSize: 50)),
        
                  const SizedBox(height: 20,),
        
                  TextFormField(
                    onTap: () {
        
                    },
                    controller: emailController,
        
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
        
                  const PasswordFieldWidget(),

                  TextFormField(
                    onTap: () {

                    },
                    controller: phoneController,
                    keyboardType: TextInputType.phone,

                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Phone Number',
                        prefixIcon: Icon(Icons.phone_android_outlined)
                    ),
                  ),

                  const SizedBox(height: 10,),

                  TextFormField(
                    onTap: () {

                    },
                    controller: addressController,

                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Address',
                        prefixIcon: Icon(Icons.location_on_outlined)
                    ),
                  ),
        

        
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
        
                        },
                        child: const Text('Use existing account ',
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline
                          ),),
                      ),
        
                      MaterialButton(onPressed: () {
        
                      },
        
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                          color: const Color(0xFFFEC422),
                          child: const Text('Sign Up',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),)
                      )
        
                      // Container(
                      //   padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                      //   decoration:
                      //   BoxDecoration(
                      //     color: Color(0xFFFEC422),
                      //     borderRadius: BorderRadius.all(Radius.circular(5))
                      //   ),
                      //   child: TextButton(onPressed: () {
                      //
                      //   },
                      //       child: Text('Login',
                      //     style: TextStyle(
                      //       fontSize: 30,
                      //       color: Colors.white
                      //     ),)),
                      // )
                    ],
                  )
                ],
              ),
            ),
        
        
        
          ],
        ),
      ),
    );
  }
}
