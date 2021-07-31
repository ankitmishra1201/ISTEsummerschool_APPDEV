import 'package:function_tree/function_tree.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 String equation='';
 String expression='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        


      ),
      body:SingleChildScrollView(

        child: Column(
          children:<Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.black54,
          ),
          padding: EdgeInsets.symmetric(vertical: 70.0),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget>[
            Text(equation,
            textAlign: TextAlign.right,

            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,


            ),
            ),


          ],
        )
      ),
            SizedBox(
              width: 200.0,
              height: 64.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[


                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('AC',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation='';

                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('C',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation.substring(0,equation.length-1);

                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('+/-',
                        style: TextStyle(
                            fontSize: 30.0,
                          color: Colors.white70
                        ),),
                      onPressed: (){},
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('/',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          expression='/';
                          equation=equation+expression;
                        });
                      },
                    ),



                  ],
                ),
                SizedBox(height: 50.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[

                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('7',
                        style: TextStyle(
                            fontSize: 30.0,
                          color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'7';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('8',
                        style: TextStyle(
                            fontSize: 30.0,
                          color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'8';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('9',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'9';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('X',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'*';
                          expression='*';
                        });
                      },
                    ),



                  ],
                ),
                SizedBox(height: 50.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[

                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('4',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'4';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('5',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'5';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('6',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'6';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('-',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'-';
                          expression='-';
                        });
                      },
                    ),



                  ],
                ),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[

                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('1',
                      style: TextStyle(
                      fontSize: 30.0,
                          color: Colors.white70


                      ),),
                      onPressed: (){setState(() {
                        equation=equation+'1';
                      });},
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('2',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'2';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('3',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'3';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('+',
                        style: TextStyle(
                          fontSize: 30.0,
                            color: Colors.white70

                      ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'+';
                          expression='+';
                        });
                      },
                    ),



                  ],
                ),
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[

                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('0',
                      style: TextStyle(
                        fontSize: 30.0,
                          color: Colors.white70

                      ),
                      ),
                      onPressed: (){
                        setState(() {
                          equation=equation+'0';
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('.',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                          equation=equation+'.';
                        });
                      },
                    ),

                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              )
                          )
                      ),
                      child: Text('=',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white70

                        ),),
                      onPressed: (){
                        setState(() {
                         equation=equation.interpret().toString();



                        });
                      },
                    ),



                  ],
                ),

              ],
            )


],
    ),

      ),
    );
  }
}
