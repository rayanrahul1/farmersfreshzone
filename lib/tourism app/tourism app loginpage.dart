import 'package:assignment/tourism%20app/tourism%20app%20home%20page.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
void main (){
  runApp(MaterialApp(home: tourismapp1(),debugShowCheckedModeBanner: false,));
}

class tourismapp1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
     body: Container(
       height: MediaQuery.of(context).size.height*4,
       width: MediaQuery.of(context).size.height*4,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.network("https://th.bing.com/th/id/OIP.BwR2SHArz6HfiKcfN-QJiwAAAA?pid=ImgDet&rs=1",width:200,height: 200,),
           ElevatedButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => tourismapp2()));
           }, child:Text("Log In"),style:ElevatedButton.styleFrom(
               shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),minimumSize: Size(200,30),
             backgroundColor:Colors.black,),),
           Text("--Or--"),
           ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.facebook), label:Text("Login With Facebook"),
             style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(
                 topLeft:Radius.circular(15),topRight:Radius.circular(15))),minimumSize: Size(200,35),backgroundColor: Colors.blueAccent ),
           ),
           ElevatedButton.icon(onPressed: (){}, icon:Icon(EvaIcons.twitter), label:Text("Login With Twitter"),
             style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                 topLeft:Radius.circular(15),topRight: Radius.circular(15))),minimumSize: Size(200,35),backgroundColor:Colors.lightBlue)),
           ElevatedButton.icon(onPressed: (){}, icon:Icon(EvaIcons.google), label:Text("Login With Google"),
             style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))),minimumSize:Size(200,35),
                 backgroundColor: Colors.red),)

         ],
       ),
     ),

    );
  }
}
