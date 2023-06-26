import 'package:flutter/material.dart';
import 'package:profile_app/stopwatch.dart';

class LoginScreen extends StatefulWidget {
  static const route = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // bool LoggedIn = false;
  late String name;
  late String email;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String gender = 'Male';

  void _validate() {
    final form = _formkey.currentState;
    if (!form!.validate()) {
      return;
    }
    setState(() {
      //LoggedIn = true;
      name = _nameController.text;
      email = _emailController.text;
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => StopWatch(name: name, email: email),
      //   ),
      // );
      Navigator.of(context).pushReplacementNamed(
        StopWatch.route,
        arguments: name,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        // child: LoggedIn ? _buildSuccess() : _buildLoginForm(),
        child: _buildLoginForm(),
      ),
    );
  }

  // Widget _buildSuccess() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Icon(
  //         Icons.check,
  //         color: Colors.orangeAccent,
  //       ),
  //       Text('Hi $name'),
  //     ],
  //   );
  // }

  Widget _buildLoginForm() {
    return Form(
      key: _formkey,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Runner'),
              validator: (value) {
                return value!.isEmpty ? 'Enter the Runner\'s name.' : null;
              },
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter the runner\'s email.';
                }
                final regex = RegExp('[^@]+@[^\.]+\..+');
                if (!regex.hasMatch(value)) {
                  return 'Enter the valid email.';
                }
                return null;
              },
            ),
            DropdownButton(
              value: gender,
              items: [
                DropdownMenuItem(
                  value: 'Male',
                  child: Text('Male'),
                ),
                DropdownMenuItem(
                  value: 'Female',
                  child: Text('Female'),
                ),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  gender = newValue!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _validate,
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
