import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEmail = TextEditingController();
  TextEditingController textPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Card(
          color: Colors.blue.shade50,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(30)),
                TextFormField(
                    controller: textEmail,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'enter your email',
                        hintStyle: TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter some text..";
                      } else if (!value.contains('@')) {
                        return 'must contains @ in email';
                      }
                      return null;
                    }),
                const SizedBox(height: 25, width: 15),
                TextFormField(
                    controller: textPassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'enter your password',
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.white)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter some text..";
                      } else if (value.length < 5) {
                        return 'length must be greater than 5';
                      }
                      return null;
                    }),
                const SizedBox(height: 25, width: 15),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed('HomePage');
                        textEmail.clear();
                        textPassword.clear();
                      }
                    },
                    child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
