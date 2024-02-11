import 'package:flutter/material.dart';
import 'package:printly/home_page/HomePage.dart';
import 'package:printly/home_page/home_page_screen.dart';
import '../password/PasswordField.dart';
import '../signup/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage('assets/images/login logo.png'),
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Welcome',
                    style: TextStyle(fontSize: 50),
                  ),
                  const Text(
                    'Back !',
                    style: TextStyle(fontSize: 50),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    onTap: () {},
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const PasswordFieldWidget(),
                  Container(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.only(right: 12),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xFFFEC422)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ));
                        },
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        color: const Color(0xFFFEC422),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
