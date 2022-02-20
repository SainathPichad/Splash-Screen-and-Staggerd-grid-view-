import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'page2.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: isloading?Colors.amber.shade50:Colors.white,

   appBar: AppBar(
     title: Text("Next"),
     actions: [
       Container(
         margin: EdgeInsets.only(right: 20),
         child: IconButton(
             onPressed: (){
               Navigator.push<void>(
                 context,
                 MaterialPageRoute<void>(
                   builder: (BuildContext context) => const Page2(),
                 ),
               );
             },
             icon: Icon(
               Icons.arrow_right_alt
             ),),
       )
     ],
   ),





        floatingActionButton: SpeedDial(
          backgroundColor: Colors.black,
          icon: Icons.share,
         overlayColor: Colors.black,overlayOpacity: 0.5,
         children: [
           SpeedDialChild(
             child: Icon(Icons.mail,

             ),
             label:"Mail",
             onTap: ()=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(
               content: Text("Mail Pressed"),
             ))

           ),
           SpeedDialChild(
               child: Icon(Icons.copy,

               ),
               label:"Copy",
             onTap:()=> Fluttertoast.showToast(msg: "Copy button tapped",

                 toastLength: Toast.LENGTH_SHORT, // length
                 gravity: ToastGravity.CENTER,    // location

             )
           ),

           SpeedDialChild(
               child: Icon(Icons.paste,

               ),
               label:"Paste"
           ),
         ],
        ),



        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 24),
                    minimumSize: Size.fromHeight(72),
                    shape: StadiumBorder()
                ),
                onPressed: ()async {
                  if(isloading)return;
                  setState(() {
                    isloading=true;
                  });
                  await Future.delayed(Duration(seconds: 2));
                  setState(() {
                    isloading=false;

                  });

                },
                child: isloading?Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text("Please Wait")
                  ],
                ):Text("Login"),
              ),
            ),
            Container(
              alignment: Alignment.center,

              padding: EdgeInsets.all(32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 24),
                    minimumSize: Size.fromHeight(72),
                    shape: StadiumBorder()
                ),
                onPressed: (){

                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Page2(),
                    ),
                  );

                },

                child: Text("Guest")
              ),
            ),

          ],
        )
    );
  }
}
