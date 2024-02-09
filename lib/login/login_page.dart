import 'package:flutter/material.dart';

import '../password/PasswordField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image(image: const NetworkImage('assets/images/login logo.png'),
          height:MediaQuery.of(context).size.height/2.5,
          width: double.infinity,
          fit: BoxFit.fill,),



          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),

                const Text('Welcome',
                  style:TextStyle(fontSize: 50) ,),
                const Text('Back !',
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

                Container(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.only(right: 12),
                    child:InkWell(
                      onTap: () {

                      },

                      child: InkWell(
                        onTap: () {

                        },
                        child: const Text('Forgot Password?',
                          style: TextStyle(color: Color(0xFFFEC422)),),
                      ),
                    )
                ),

                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {

                      },
                      child: const Text('Sign Up',
                        style: TextStyle(
                          fontSize: 25,
                          decoration: TextDecoration.underline
                        ),),
                    ),

                    MaterialButton(onPressed: () {

                    },

                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                        color: const Color(0xFFFEC422),
                        child: const Text('Login',
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
    );
  }
}
