import 'package:flutter/material.dart';

void main() {
  runApp( Basketball());
}
class Basketball extends StatefulWidget {
  Basketball();

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
   int teamapoints = 0;
   int teambpoints = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      const Text('Team A',
                        style: TextStyle(
                          fontSize: 30,
                        ),  
                      ),
                      Text('$teamapoints', 
                          style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamapoints++;
                          });
                        }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize:const Size(150, 50)
                      ),
                      child:const Text('Add 1 Point', style: TextStyle(fontSize: 18, color: Colors.black),)),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamapoints+=2;
                          });
                        },
                        
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize:const Size(150, 50),
                       ),
                       child:const Text('Add 2 Points' ,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                       ) ,
                       ),
                       ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamapoints+=3;
                          });
                        },
                       
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize:const Size(150, 50),
                       ),
                       child:const Text('Add 3 Points' ,
                       style: TextStyle(fontSize: 18, color: Colors.black),
                       ) ,
                       ),
                    ],
                  ),
                ),
              Container(
                  height: 500,
                  child: const VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Team B', style: TextStyle(fontSize: 30),),
                      Text('$teambpoints', style:const TextStyle(fontSize: 150),),
                      ElevatedButton(
                        onPressed:(){
                          setState(() {
                            teambpoints++;
                          });
                        },
                       
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize:const Size(150, 50),
                      ),
                      child: const Text('Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:18,
                          ),
                      ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teambpoints+=2;
                          });
                        },
                         style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize:const Size(150, 50),
                         ),
                         child:const Text('Add 2 Points',
                         style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                         ),
                         ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teambpoints+=3;
                            });
                          },
                         style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize:const Size(150, 50),
                         ),
                         child:const Text('Add 3 Points',
                         style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                         ) ,
                         ),
                         ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    teamapoints = 0;
                    teambpoints = 0;
                  });
                },
                 
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize:const Size(150, 50),
                 ),
                 child:const Text('Reset',
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                 ),
                 ),
                 ),
            )
          ],
        )
      ),
    );
  }
}
