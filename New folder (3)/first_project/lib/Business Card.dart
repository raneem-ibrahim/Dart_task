import 'package:flutter/material.dart';

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 29, 33, 58),
    body: Center(
      child:Padding(padding:EdgeInsets.only(top: 100),
      child:Column(
        children: [
          Image.asset('assets/images/Ballers-removebg-preview.png'),
          Text("Ballers Academy" , style: TextStyle(color:const Color.fromARGB(255, 242, 137, 68) ,fontFamily: "OFL",fontSize: 30)),
          Text("Coatch Amro" , style: TextStyle(color:const Color.fromARGB(255, 242, 137, 68) ,fontFamily: "OFL",fontSize: 30)),
          Padding(  padding: EdgeInsets.symmetric(horizontal: 20),
          child: 
          Card(
            child: ListTile(
              leading: Icon(Icons.phone ,color: Color.fromARGB(255, 29, 33, 58),),
              title: Text("+962776800942"),
            ) ,


          ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child:  Card(
          child: ListTile(
          leading: Icon(Icons.email, color: Color.fromARGB(255, 29, 33, 58)),
      title: Text("www.ballersaqaba.com"),
    ),
  ),
),  
        ],
        
      )
      )
    )
    );
  }
}
