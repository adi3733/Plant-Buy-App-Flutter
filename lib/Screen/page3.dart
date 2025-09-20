import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_site/Screen/Page2.dart';
import 'package:plant_site/Screen/page4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes =
      List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:const Color.fromARGB(255, 251, 239, 242),
      //backgroundColor: const Color.fromARGB(255, 226, 222, 223),
      body:Column(
       
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          GestureDetector(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()),);
            },
          
          child:Padding(padding: EdgeInsets.only(top:70,left:20),
          child:Icon(Icons.arrow_back,size: 30,),),),
          SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Verification",style:GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w700)),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Enter the otp code from phone we just sent you",style: TextStyle(fontSize: 20,),),
          ),
         
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    obscureText: true,
                    obscuringCharacter: '•',
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      counterText: "",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 129, 128, 128),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 129, 128, 128),
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                      }
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
                      }
                    },
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,top:25),
            child:Row(
              children:[
                 Text("Dont't receive otp code!",style:TextStyle(fontSize: 18),),
                  Text("Resend",style:TextStyle(fontSize:18,fontWeight: FontWeight.bold )),
              ],
            ),
            
          ),
          SizedBox(height:40),
          
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page4()),);
            },
          
            child:Padding(
              padding: const EdgeInsets.only(left:20.0,right:20),
              
              child: Container(
              height:55,
              width:370,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromRGBO(62, 102, 24, 1),const Color.fromRGBO(124, 180, 70, 1)])
              ),
              child:Text("Submit ",style: TextStyle(
                fontSize:30,fontWeight: FontWeight.bold,color: Colors.white),
                textAlign: TextAlign.center,)
                    ),
            ),
          
          ),
        ],
      ),
    );
  }
}
