import 'dart:ui';

import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title:
        Text('Вход в аккаунт',
          style: TextStyle(color: Colors.white),),),
      body: Column(
        children: [inputField()],
      ),
    );
  }
}

class inputField extends StatefulWidget {
  inputField({Key? key}) : super(key: key);


  @override
  State<inputField> createState() => _inputFieldState();
}

class _inputFieldState extends State<inputField> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;
  

  void _auth(){
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin'){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Вход выполнен успешно'),
          actions: [
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              },
            child: Text('OK'),
            )
          ],
        );
      });
      errorText = null;
    } else {
        errorText = 'Неверный логин или пароль';
    }
    setState(() {});
  }
  void _resetPassword(){

  }
  final textStyleButton = TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'DejaVu Sans Mono', letterSpacing: 0.2);
  final textStyle = TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'DejaVu Sans Mono', letterSpacing: 0.2, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text('Логин', style: textStyle,),
        SizedBox(height: 10),
        TextField(
          style: textStyle,
          controller: _loginTextController,
          decoration: InputDecoration(
              border: OutlineInputBorder()),
        ),
        SizedBox(height: 15),
        Text('Пароль', style: textStyle,),
        SizedBox(height: 10),
        TextField(
          obscureText: true,
          style: textStyle,
          controller: _passwordTextController,
          decoration: InputDecoration(
              border: OutlineInputBorder()),
        ),
        if (errorText != null) ...[
          SizedBox(height: 10),
          Text(errorText, style: TextStyle(fontSize: 14, color: Colors.red),),
          SizedBox(height: 10),
        ],
        SizedBox(height: 40),
        Row(
          children: [
            ElevatedButton(
                onPressed: _auth,
                child:
                Text('Вход',style: textStyleButton,),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.green)
                        )
                    ))),
            SizedBox(width: 15),
            ElevatedButton(
                onPressed: _resetPassword,
                child:
                Text('Забыли пароль?',
                  style: textStyleButton,),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.green)
                        )
                    ))),
            SizedBox(width: 15),
            ElevatedButton(
                onPressed: () {},
                child:
                Text('Регистрация', style: textStyleButton,),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.green)
                        )
                    ))),
          ],
        )
      ],
    )));
  }
}

