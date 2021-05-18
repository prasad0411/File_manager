import 'package:flutter/material.dart';
import 'package:file_manager/SecondPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(15),
            child:
            AppBar(backgroundColor: Colors.white,elevation:0,shadowColor: Colors.white,),
          ),

          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children:[
                    Container(
                      child: RawMaterialButton(
                        elevation: 1,
                        onPressed: (){},
                        fillColor: Colors.white,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0,3,0,0),
                          child: Icon(Icons.notes_rounded,size:22,color:Colors.grey[700])),
                        shape: CircleBorder(),
                      )
                    ),

                    RawMaterialButton(
                      onPressed: (){},
                      fillColor: Colors.white,
                      elevation: 1,
                      constraints: BoxConstraints(),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10,5,10,10),
                        padding: EdgeInsets.fromLTRB(0,3,0,0),
                        child: Icon(Icons.notifications_none,size: 22,color: Colors.grey[700],)),
                      shape: CircleBorder(),
                    ),
                    SizedBox(width:120),
                    
                    Container(
                      margin: EdgeInsets.fromLTRB(0,0,0,0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange,width:1.4),
                        borderRadius:BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                        child: Row(children:
                         [ Icon(Icons.add,size: 20,color:Colors.orange,)],),
                    ),
                    SizedBox(width:10),
                    
                  Container(
                    margin: EdgeInsets.fromLTRB(0,0,20,0),
                    child: Text('Add File',
                    style: TextStyle(fontSize:12,fontWeight:FontWeight.bold, color:Colors.orange),),
                  ),
                ],
                ),
              ),

            SizedBox(height: 15),
              Row(
                children:[
                   Container(
                     margin:EdgeInsets.only(left:20),
                     child: Row(children: [Text('Manage', style:TextStyle(fontSize:20,color: Colors.grey[700],),),],) 
                 ),
               ] 
                ),

              Row(
                children: 
                 [
                   Container(
                     margin:EdgeInsets.only(left:20),
                     child: Text('all your files', style:TextStyle(fontSize:20,fontWeight: FontWeight.bold,)),
                   ),
                 ],
               ),

              SizedBox(height:30),
              
              Container(
              margin: EdgeInsets.fromLTRB(25,0,25,0),
              padding: EdgeInsets.fromLTRB(10,15,0,15),
              decoration: BoxDecoration( 
                border:Border.all(color: Colors.blueGrey[50]),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                child: Expanded(
                   child: Column(children: [
                    Row
                    (
                      children: [ 
                        Text('My cloud', style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(width:200),Icon(Icons.more_horiz,size:20,),
                      ],
                    ),
                    SizedBox(height:20),

                    Row(
                      children: [
                        Container(child: 
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                            children: 
                          [
                            ConstrainedBox(constraints:BoxConstraints(minHeight:10,minWidth: 60),
                              child: (Container(decoration: BoxDecoration(color:Colors.yellow,borderRadius:BorderRadius.all(Radius.circular(5))))),),SizedBox(width:3),
                            ConstrainedBox(constraints:BoxConstraints(minHeight:10,minWidth: 60),
                              child: (Container(decoration: BoxDecoration(color:Colors.red,borderRadius:BorderRadius.all(Radius.circular(5))))),),SizedBox(width:3),
                            ConstrainedBox(constraints:BoxConstraints(minHeight:10,minWidth: 40),
                              child: (Container(decoration: BoxDecoration(color:Colors.blue,borderRadius:BorderRadius.all(Radius.circular(5))))),),SizedBox(width:3),
                            ConstrainedBox(constraints:BoxConstraints(minHeight:10,minWidth: 110),
                              child: (Container(decoration: BoxDecoration(color:Colors.grey[300],borderRadius:BorderRadius.all(Radius.circular(5))))),)
                          ],
                          ),
                        ),
                      ],
                    ),
                      
                    SizedBox(height:20),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Row(children: 
                       [
                        Text('Free:',style:TextStyle(color:Colors.grey,fontSize: 14),),
                        Text(' 53 GB',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                       ],),
                       Row(children: [
                        Text('Used:',style:TextStyle(color:Colors.grey,fontSize: 14),),
                        Text(' 74 GB',style:TextStyle(color:Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ),

              Expanded(
                child: Container(
                  height: 40, width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey[50],),
                    borderRadius: BorderRadius.circular(30),color:Colors.white
                  ),
                  padding: EdgeInsets.fromLTRB(10,0,10,0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RawMaterialButton(
                          onPressed:()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(),),);
                          },
                          constraints: BoxConstraints(maxHeight:30),
                          child: Text('Details',style:TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 13,color: Colors.orange)
                            ),
                        ),
                        Icon(Icons.arrow_forward,color: Colors.green[400],size: 13),
                      ],
                    ),
                ),
              ),
              SizedBox(height:10),
              
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(25,0,25,0),
                  child: Row(
                    children: [
                      Row(children: [
                        Text("Files",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                        SizedBox(width:200),
                        Text("See all",style:TextStyle(color:Colors.orange,fontSize:12,fontWeight: FontWeight.bold),),
                        SizedBox(width:13),
                        Icon(Icons.arrow_forward,color:Colors.green[400],size:13)
                      ],)
                    ],
                  ),
                ),
              ),
               SizedBox(width:5), 

              Column(children: 
                [ Row(children: 
                    [
                      Expanded(
                       child: Container( 
                          height: 60,width: 305,
                          margin:EdgeInsets.fromLTRB(25,10,25,0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.pink[50]
                          ),
                          child: 
                            Row(children:
                              [ Row( children:
                                [Container(
                                  margin: EdgeInsets.only(left:20),
                                  padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.red[400],
                                        borderRadius:BorderRadius.circular(20)
                                      ),
                                      child: Icon(Icons.border_all_rounded,color:Colors.white,size:20)
                                      ),
                                ],),

                                SizedBox(width:10),
                                Text("App",style: TextStyle(fontWeight:FontWeight.bold,fontSize:15),),
                                SizedBox(width:150),
                                Text("13.2 GB",style: TextStyle(
                                  fontWeight:FontWeight.bold,
                                  fontSize:12,
                                  color: Colors.red[400]),
                                ),
                              ],
                            ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:5),

                  Row(children: [
                      Expanded(
                        child: Container(
                          height: 60,width: 200,
                          margin: EdgeInsets.fromLTRB(25,0,0,0),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[50]
                          ),
                          child: 
                          Row(children: 
                            [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20,0,0,0),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:BorderRadius.circular(20)
                                  ),
                                  child: Icon(Icons.calendar_today_rounded,size:20,color: Colors.white)
                                  ),
                                SizedBox(width:10),
                                Text("Documents",style:TextStyle(color:Colors.blue[900],fontWeight:FontWeight.bold) )
                              ],
                            ),
                            ],
                          )
                        ),
                      ),
                      SizedBox(width: 5),

                      Container(
                          margin: EdgeInsets.fromLTRB(0,0,25,0),
                          padding: EdgeInsets.fromLTRB(10,0,20,0),
                          height: 60,width:100,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange[50]
                          ),
                          child: 
                          Row(children: 
                            [Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20,0,0,0),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:BorderRadius.circular(20)
                                  ),
                                  child: Icon(Icons.videocam,size:20,color: Colors.white)
                                  )],
                            ),],
                          )
                        ),
                    ],),
                    SizedBox(height:20),
                ],)
            ],),

          bottomNavigationBar: BottomAppBar(
            elevation: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(2,5,2,0),
              decoration: BoxDecoration(
              color: Colors.white,
              ),
              height: 50,
              width: 100,
              child:Expanded(
                child: Row
                 (mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                  RawMaterialButton( onPressed:(){},
                  constraints: BoxConstraints(maxHeight:30),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5,5,5,5),
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.orange),
                      child: Icon(Icons.add,color:Colors.white,size: 15,)
                    )
                  ),

                  RawMaterialButton(onPressed:(){},
                    constraints:BoxConstraints(maxHeight:30),
                    child: Icon(Icons.calendar_today_rounded,color: Colors.grey)
                  ),

                  RawMaterialButton(onPressed:(){},
                  constraints: BoxConstraints(maxHeight:60),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0,0,0,7),
                      padding: EdgeInsets.fromLTRB(0,0,0,8),
                      decoration: BoxDecoration(
                        border:Border(bottom:BorderSide( width: 2.0,color: Colors.orange))
                      ),child: Icon(Icons.home,color: Colors.orange,size: 20,))
                  ),

                  RawMaterialButton(onPressed:(){},
                  constraints: BoxConstraints(maxHeight:30),
                    child: Icon(Icons.pie_chart_sharp,color: Colors.grey),
                  ),

                  RawMaterialButton(onPressed:(){},
                  constraints: BoxConstraints(maxHeight:30),
                    child: Icon(Icons.hourglass_empty_outlined,color: Colors.blue),
                  ),

                ],),
              )
            ),
          ),
        );
      }
    }