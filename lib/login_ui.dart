
import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

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
                    child: Text('LOGIN',
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
                         padding: const EdgeInsets.only(right: 210.0,),
                         child: TextButton(onPressed: (){},
                         style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 75, 121, 238)
                         ), 
                         child: const Text('forgot password?',style: TextStyle(fontSize: 16),
                         ),
                         ),
                       ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 140),
                          child: ElevatedButton(onPressed: (){}, style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 181, 140, 252))),
                          child: const Text('SIGN IN' ,style: TextStyle(color: Colors.black,fontSize: 15),)
                          ),
                        )),
                         SizedBox( 
                          height: 100,
                           child: TextButton(onPressed: (){Navigator.pushNamed(context, '/sign_up');},
                           style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(255, 75, 121, 238)
                           ), 
                           child: const Text('Dont have an account?SIGN UP',style: TextStyle(fontSize: 16),
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