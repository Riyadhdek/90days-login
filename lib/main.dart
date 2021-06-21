import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter90daysapp/login.dart';
import 'package:flutter90daysapp/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 95),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo90.png")
                    )
                ),
              ),


           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[

              Column(
                children: <Widget>[
                  SizedBox(height:00),
                  Text(
                    "for 90 times cleaner life",
                    style:TextStyle(
                      color: Colors.grey[800],
                      fontSize: 22,


                    )
                  )

                ],
              ),
             ]
           ),

             SizedBox(height: 60),

             Row(


               children:<Widget>[
                 SizedBox(height: 150),

                 Column(

                   children: <Widget>[
                     TextButton(

                       onPressed: (){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                       },
                       style: TextButton.styleFrom(
                         minimumSize: Size(115, 30),
                         backgroundColor: Color(0xff5EFF00),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(50)
                         ) ,
                       ),
                       child: Text(
                         "Sign up",
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w600,
                           fontSize: 18,
                         ),
                       ),
                     )
                   ],

                 ),
                 SizedBox(width: 20),
                 Column(

                   children: <Widget>[

                     TextButton(


                       onPressed: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                       },
                       style: TextButton.styleFrom(
                         minimumSize: Size(115,30),


                         shape:
                         RoundedRectangleBorder(
                             side: BorderSide(
                                 color: Color(0xff5EFF00)
                             ),
                             borderRadius: BorderRadius.circular(50)
                         ),
                       ),
                       child: Text(
                         "Login",
                         style: TextStyle(
                             color: Color(0xff5eff00),
                             fontSize: 18
                         ),
                       ),


                     ),
                   ],
                 ),


               ],
             )


            ],
          ),
        ),
      ),
    );
  }
}

