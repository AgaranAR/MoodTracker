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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(padding: const EdgeInsets.all(16),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: _email_cont,decoration: const InputDecoration(labelText: 'Email',border: OutlineInputBorder(),),
          keyboardType: TextInputType.emailAddress),
          const SizedBox(height: 16),
          TextField(controller: _pass_cont,decoration: InputDecoration(labelText: 'Password',border: OutlineInputBorder())
            ,obscureText: true),
          const SizedBox(height: 24),
          ElevatedButton(onPressed: login, child: const Text('Login')
        ],
      ),),
    );
  }
}