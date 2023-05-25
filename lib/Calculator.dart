import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

   @override
  Widget build(BuildContext context) {

    double devicewidth= MediaQuery.of(context).size.width;
    double deviceheight= MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SizedBox(
              width: devicewidth,
              height: deviceheight,
              child: Column(
                
                children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only( right: 50.0),
                    child: const Text("2548", style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: 'Pacifico',
                      ),),
                  ) 
                ),
                  Expanded(
                  flex: 2,
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [
                        CircleAvatar(
                      backgroundColor: Color.fromARGB(158, 187, 177, 177),
                      radius: 40,
                      child: Text(
                        'AC',
                        style: TextStyle(color: Colors.white ,fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(158, 187, 177, 177),
                      radius: 40,
                      child: Text(
                        '+/-',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(158, 187, 177, 177),
                      radius: 40,
                      child: Text(
                        '%',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 40,
                      child: Text(
                        '÷',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [
                        CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '7',
                        style: TextStyle(color: Colors.white ,fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '8',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '9',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 40,
                      child: Text(
                        'x',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [
                        CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white ,fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '6',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 40,
                      child: Text(
                        '-',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                    
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [
                        CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white ,fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(105, 78, 76, 76),
                      radius: 40,
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 40,
                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                    
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                      children: [

                        Expanded(
                          flex: 2,
                          child: Container(
                                  height: 70,
                                  padding: const EdgeInsets.only( left: 20.0 , top: 9.0),
                                  margin: const EdgeInsets.only( left: 40.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    color: Color.fromARGB(105, 78, 76, 76),
                                  ),
                           
                                child: Text(
                                  '0',
                                  style: TextStyle(color: Colors.white ,fontSize: 40),
                                ), 
                          ),
                        ),
                      
                      Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            CircleAvatar(
                                backgroundColor: Color.fromARGB(105, 78, 76, 76),
                                radius: 40,
                                child: Text(
                                  ',',
                                  style: TextStyle(color: Colors.white, fontSize: 40),
                                ),
                              ),
                            
                              CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 40,
                                child: Text(
                                  '=',
                                  style: TextStyle(color: Colors.white, fontSize: 40),
                                ),
                              ),
                          ],)
                        ),
                    
                      
                    
                    
                      ],
                    ),
                    
                  ]),
                ),
              ]),
            ),
            
        ));
  }
}

