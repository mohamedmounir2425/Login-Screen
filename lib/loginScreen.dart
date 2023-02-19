import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img = Container(
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(20),
        topEnd: Radius.circular(20),
        bottomEnd: Radius.circular(20),
        bottomStart: Radius.circular(20),
      )),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        'images/loginImg.png',
        width: 300,
      ),
    );

    final email = Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 49, 235, 201),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.penToSquare,
              color: Color.fromARGB(255, 135, 137, 137),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff1CC0A9))),
            labelText: 'E Mail',
            labelStyle: TextStyle(color: Color(0xff1CC0A9))),
        validator: (String? value) {
          return (value != null && value.contains('@'))
              ? 'Do not use the @ char.'
              : null;
        },
      ),
    );

    final password = Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        autofocus: false,
        obscureText: true,
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.password,
              color: Color(0xff1CC0A9),
            ),
            suffixIcon: Icon(
              FontAwesomeIcons.penToSquare,
              color: Color.fromARGB(255, 135, 137, 137),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff1CC0A9))),
            labelText: 'Password',
            labelStyle: TextStyle(color: Color(0xff1CC0A9))),
      ),
    );

    final btn = Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Material(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
        elevation: 18.0,
        color: Color(0xff1CC0A9),
        clipBehavior: Clip.antiAlias, // Add This
        child: MaterialButton(
            minWidth: 200.0,
            height: 50,
            color: Color(0xff1CC0A9),
            child: Text(
              'Submit',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            onPressed: () {
              print("i'm Button :)");
            }),
      ),
    );

    final otherLogin = Column(
      children: [
        Container(
          child: const Text(
            'Or Login With',
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff1CC0A9),
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                iconSize: 72,
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 70,
                ),
                onPressed: () {
                  // ...
                },
              ),
              IconButton(
                iconSize: 72,
                icon: const Icon(
                  FontAwesomeIcons.google,
                  color: Color.fromARGB(255, 240, 53, 20),
                  size: 60,
                ),
                onPressed: () {
                  // ...
                },
              ),
              IconButton(
                iconSize: 72,
                icon: const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Color(0xff28B463),
                  size: 65,
                ),
                onPressed: () {
                  // ...
                },
              ),
              IconButton(
                iconSize: 72,
                icon: const Icon(
                  FontAwesomeIcons.instagram,
                  color: Color(0xffE74C3C),
                  size: 65,
                ),
                onPressed: () {
                  // ...
                },
              ),
            ],
          ),
        )
      ],
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1CC0A9),
          title: Center(child: Text("Login Screen")),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [img, email, password, btn, otherLogin],
            ),
          ),
        ));
  }
}
