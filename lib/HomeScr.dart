import 'package:flutter/material.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Day4 App'),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    obscureText: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        // hintText: 'password',
                        labelText: 'E Mail',
                        border: OutlineInputBorder()),
                    // onTap: () {
                    //   print("tapped");
                    // },
                    // onChanged: (a) {
                    //   print(a);
                    // },
                    onFieldSubmitted: (str) {
                      print(str);
                    },
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    obscureText: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        // hintText: 'password',
                        labelText: 'Password',
                        border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: MaterialButton(
                      color: Colors.blue[600],
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () {
                        print("i'm Button :)");
                      }),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(60),
                    topEnd: Radius.circular(20),
                    bottomEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20),
                  )),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: const Image(
                    width: 200,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/3651335/pexels-photo-3651335.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                Container(
                  child: const Image(
                    width: 200,
                    image: AssetImage('images/img1.jpeg'),
                  ),
                ),
                Container(
                  child: const Image(
                    width: 200,
                    height: 200,
                    image: AssetImage('images/img2.jpeg'),
                  ),
                ),
                SizedBox(
                  height: 300,
                )
              ],
            ),
          ),
        ));
  }
}
