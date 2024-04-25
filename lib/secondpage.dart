import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {

  secondpage( {super.key,required this.email,required this.Company,required this.type,required this.web,required this.password});

  String email;
   String Company;
   String type;
   String web;
   String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('SECONDPAGE')
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(email),
          Text(Company),
          Text(type),
          Text(web),
          Text(password),

        ],
      ),
    );
    }
}
