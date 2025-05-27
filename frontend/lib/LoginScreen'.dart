import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key?key}) : super(key:key);

  @override
  _LoginScreenState createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen>{
  final _email_cont = TextEditingController();
  final _pass_cont = TextEditingController();

  @override void dispose() {
    _email_cont.dispose();
    _pass_cont.dispose();
    super.dispose();
  }

  void login(){
    final email = _email_cont.text.trim();
    final password = _pass_cont.text;

    print('$email');
    print('$password');
  }

  @override
}