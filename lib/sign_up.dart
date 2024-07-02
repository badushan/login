import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 100,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('SIGN UP',
                    style: TextStyle(
                       color: Colors.deepPurple,
                       fontWeight: FontWeight.bold,
                       fontSize: 50,
                    ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 60.0,left: 20, right: 30),
                     child: TextField(
                        decoration: InputDecoration(
                          hintText: 'username',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 248, 246, 248),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                        
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20,right: 30 , top:22),
                         child: TextField(
                          decoration: InputDecoration(
                            hintText: 'password',
                            filled: true,
                            fillColor:const Color.fromARGB(255, 249, 247, 249),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                                         ),
                       ),
                        Padding(
                     padding: const EdgeInsets.only(left: 20,right: 30 , top:22),
                         child: TextField(
                          decoration: InputDecoration(
                            hintText: 'confirm password',
                            filled: true,
                            fillColor:const Color.fromARGB(255, 249, 247, 249),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                                         ),
                       ),
                      SizedBox(height: 90,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40,left: 140,right: 140),
                          child: ElevatedButton(onPressed: (){}, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 181, 140, 252))),
                          child: const Text('SIGN UP' ,style: TextStyle(color: Colors.black,fontSize: 14),)
                          ),
                        )),
                         SizedBox( 
                          height: 100,
                           child: TextButton(onPressed: (){ 
                            Navigator.pop(context ,'/login_ui');
                           },
                           style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 75, 121, 238)
                           ), 
                           child: const Text('Already have an account?SIGN IN',style: TextStyle(fontSize: 16),
                           ),
                           ),
                         ),
                        ],
              )
            ),
          ),
      );
  }
}