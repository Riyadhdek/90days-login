import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter90daysapp/signup.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body:

       Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 110),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
            Container(
              height: MediaQuery.of(context).size.height/6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo90.png")
                )
              ),
            ),
            SizedBox(height:25),
            Text("Log In to your 90Clean account",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,)),
            SizedBox(height: 40),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 5),
              child:Column(
                children: <Widget>[
                  inputFile3(),
                  inputFile4(label: "", obscureText: true)
                ],
              ) ,


            ),
            SizedBox(height: 20),
            Padding(padding:
            EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              padding: EdgeInsets.only(top: 3,left: 3),

              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {},
                color: Color(0xff5edd00),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "Login",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
                ),
              ),
            ),

            ),
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Not a Member yet?",style:TextStyle(
                color:Color(0xff0c0d11),
      fontWeight: FontWeight.w400,
      fontSize: 16,),),
                TextButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(40, 20),
                    shape: RoundedRectangleBorder(
                    ) ,
                  ),
                  child: Text(
                    "join",
                    style: TextStyle(
                      color:Color(0xff4bcc00),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,)

                ),
                ),
              ],
            ),
          ],
        ),

      ),


    );

  }
}
// we will be creating a widget for text field
Widget inputFile3()=> TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0,
            horizontal: 30),
        hintText: 'your e-mail',
        fillColor:Color(0xff5EFF00),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff5EFF00),


          ),
          borderRadius: BorderRadius.circular(50),

        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5EFF00)),
            borderRadius: BorderRadius.circular(50)
        )
    )
);
Widget inputFile4({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Color(0xff4bcc00)
        ),

      ),
      SizedBox(
        height: 0,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(

            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 30),
            hintText: 'your password',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff5EFF00),


                ),
                borderRadius: BorderRadius.circular(50)

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff5EFF00)),
                borderRadius: BorderRadius.circular(50)

            )
        ),
      ),
      SizedBox(height: 0,)
    ],
  );
}

