import 'package:flutter/material.dart';
import 'package:file_manager/InitialPage.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(backgroundColor: Colors.white, elevation: 0, shadowColor: Colors.white,)),

        backgroundColor: Colors.white,
        body: Column(
        children:[
         Row(children:[
          Container(
            margin: EdgeInsets.fromLTRB(20,0,0,0),
            child: RawMaterialButton(
            elevation: 1,
            constraints: BoxConstraints(),
            onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(8,5,1,5),          
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border:Border.all(color:Colors.grey[700])
                ),
                child: Icon(Icons.arrow_back_ios,size:20)
              ),shape: CircleBorder(),
            ),
          ),
          SizedBox(width:224),

          Container(
            margin: EdgeInsets.fromLTRB(0,0,20,0),
            child: RawMaterialButton(
            elevation: 1,
            constraints: BoxConstraints(),
            onPressed: (){},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                border:Border.all(color:Colors.grey[700])
                ),
                padding: EdgeInsets.fromLTRB(5,5,5,5),          
                child: Icon(Icons.delete_outline_rounded,size:20)
              ),
              shape: CircleBorder(),
            ),
          ),
        ],),
        SizedBox(width:20),

        Row(children:[
            Container(
              margin:EdgeInsets.fromLTRB(20,0,0,0),
              child:
              Text('My cloud',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),
              )
            )
          ],
        )
      ],
    ),
  );}
}