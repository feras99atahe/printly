import 'package:flutter/material.dart';


class PasswordFieldWidget extends StatelessWidget {
  const PasswordFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final passwordController = TextEditingController();
    bool passToggle=true;
    return  StatefulBuilder(
      builder: (context,innerSetState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
          child: TextFormField(


            obscureText:passToggle,

            controller: passwordController,
            decoration:
            InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                border: const UnderlineInputBorder(),
                labelText: 'Password',
                suffix: InkWell(
                  onTap: () {
                    innerSetState(() {
                      passToggle=!passToggle;


                    });
                  },
                  child: Icon(passToggle ? Icons.visibility_off : Icons.visibility),

                )
            ),
          ),
        );
      }
    );
  }
}
