import 'package:flutter/material.dart';

class BasketBallpoint extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      backgroundColor:Colors.orange,
      title: Text("Basketball pointer Counter"),
    ),
    body:Padding(padding:EdgeInsets.only(top: 50),
  child:Column(
     
      children:[
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("Team A" , style: TextStyle(fontSize: 30),),
        Text("0" , style: TextStyle(fontSize: 100),),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text("Add 1 point",style:TextStyle(color:Colors.black)) ),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text("Add 2 point",style:TextStyle(color:Colors.black)) ),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text("Add 3 point",style:TextStyle(color:Colors.black)) ),
              ],
            ),

   Container(
      height: 300,
      child: VerticalDivider(
        color: Colors.orange,
        thickness: 1,
        width: 50,
        
      ),
    ),
  



             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("Team A" , style: TextStyle(fontSize: 30),),
        Text("0" , style: TextStyle(fontSize: 100),),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text("Add 1 point",style:TextStyle(color:Colors.black)) ),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text("Add 2 point",style:TextStyle(color:Colors.black)) ),
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text("Add 3 point",style:TextStyle(color:Colors.black)) ),
              ],
            )
          ],
        ),
      


         ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange), child:Text(" Reset pointer" ,style:TextStyle(color:Colors.black),) ),
        
      
      ]
      
    ),
    
    ),
 
    );
  }
}
