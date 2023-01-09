import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class LoginScreen  extends StatefulWidget {
  

 @override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {

bool isRememberMe = false;


Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Digitel seu Email',
        style: TextStyle(
         color: Colors.black26,
         fontSize: 16,
         fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          height: 60,
          child: TextField(
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
              ),
              hintText: '00000@gmail.com',
            ),
          ),
        )
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Digite sua Senha',
        style: TextStyle(
         color: Colors.black26,
         fontSize: 16,
         fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          height: 60,
          child: TextField(
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
              ),
              hintText: '******',
            ),
          ),
        )
    ],
  );
}

Widget buildForgotPassBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed:() => print('Esqueceu a senha'),
      child: Text(
        'Esqueçeu sua senha?',
        style: TextStyle(
          color: Colors.blue.shade900,
          fontWeight:FontWeight.bold,
        ),
      ),
    ),
  );
}

 Widget BuildRememberMe(){
  return Container(
    alignment: Alignment.centerLeft,
    height: 20,
    child: Row(
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.black54), 
          child: Checkbox(
            value: isRememberMe,
            checkColor: Colors.blue.shade800,
            activeColor: Colors.white,
            onChanged: (value){
              setState(() {
                isRememberMe = value!;
              });
            },
          )
          ),
          Text(
            'Lembrar de mim',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          )
      ],
      ),
  );
}


Widget buildLoginBtn(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width:600,
  
    child: ElevatedButton(
      
      onPressed: () => print('Login pressed'), 
      child: Text(
        'Entra',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      
    ),
   
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light,
         child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  padding:EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 150,
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Bem-vindo',
                    style: TextStyle(
                      color:Colors.blue.shade900,
                      fontSize:40,
                      fontWeight: FontWeight.bold,
                     ),
                     ),
                     SizedBox(height: 50,),
                     buildEmail(),
                     SizedBox(height: 20,),
                     buildPassword(),
                     buildForgotPassBtn(),
                     BuildRememberMe(),
                     buildLoginBtn(),
                  ],
                ),
                  ),
              )
            ],
          ),
         ),
      ),
    );
  }
}