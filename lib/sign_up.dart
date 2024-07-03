
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key}); 

  @override
  State<SignUp> createState() => _MyRadioButtonState();
}


class _MyRadioButtonState extends State<SignUp> {
  Gender? gender = Gender.male;
  bool isCheckedApp = false;
  bool isCheckedWeb = false;
  bool isCheckedDesigner = false;
  bool isCheckedFrontend = false;
  bool isCheckedBackend = false;

  // dropdown

  String dropdownvalue = 'Select DISTRICT';
  List<String> items = ['Select DISTRICT', 'Ernakulam', 'Thrissur', 'kozhikode','Malappuram','Tiruvanathapuram'];
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 40,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('SIGN UP',
                      style: TextStyle(
                         color: Colors.deepPurple,
                         fontWeight: FontWeight.bold,
                         fontSize: 50,
                      ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 40.0,left: 20, right: 30),
                      child:  txtfield(hintText: 'First name')
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 30 , top:8),
                           child: txtfield(hintText: 'Last name'),
                           ),
                          Padding(
                       padding: const EdgeInsets.only(left: 20,right: 30 , top:8),
                           child: txtfield(hintText: 'Email address'),
                         ),
                         Padding(
                       padding: const EdgeInsets.only(left: 20,right: 30 , top:8),
                           child: txtfield(hintText: 'Mobile no.'),
                         ),
                         Padding(
                       padding: const EdgeInsets.only(left: 20,right: 30 , top:8),
                           child: txtfield(hintText: 'Password'),
                         ),
                         Padding(
                       padding: const EdgeInsets.only(left: 20,right: 30 , top:8),
                           child: txtfield(hintText: 'Confirm password'),
                         ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8,right: 30),
                          child: Card(
                            shape: RoundedRectangleBorder(
    side: const BorderSide(color: Colors.black,),
    borderRadius: BorderRadius.circular(20),
  ),
                            color: const Color.fromARGB(255, 249, 247, 249),
                            child: Column(
                              children: [
                                Title(color: Colors.black, child: const Padding(
                                  padding: EdgeInsets.only(right: 250.0,top: 5),
                                  child: Text('GENDER',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                                ),),
                              
                                                    
                                          ListTile(
                                            title: const Text('Male'),
                                            leading: Radio<Gender>(
                                              value: Gender.male,
                                              groupValue: gender,
                                              onChanged: (Gender? value) {
                                                setState(() {
                                                  gender = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('Female'),
                                            leading: Radio<Gender>(
                                              value: Gender.female,
                                              groupValue: gender,
                                              onChanged: (Gender? value) {
                                                setState(() {
                                                  gender = value;
                                                });
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: const Text('Other'),
                                            leading: Radio<Gender>(
                                              value: Gender.other,
                                              groupValue: gender,
                                              onChanged: (Gender? value) {
                                                setState(() {
                                                  gender = value;
                                                });
                                              },
                                            ),
                                          ),
                                                 ]),
                          ),
                          ),
 Padding(
   padding: const EdgeInsets.only(left: 20.0, top: 8,right: 30),
   child: Card(
    
      shape: RoundedRectangleBorder(
      side: const BorderSide(color: Colors.black,),
      borderRadius: BorderRadius.circular(20),
    ),
      color: const Color.fromARGB(255, 249, 247, 249),
     child: Column(
      
                    children: [
                                Title(color: Colors.black, child: const Padding(
                                  padding: EdgeInsets.only(right: 220.0,top: 5,bottom: 2),
                                  child: Text('INTERESTS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                                ),),
                      ListTile(
                        title: const Text('App development'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedApp,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedApp = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Web development'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedWeb,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedWeb = value!;
                            });
                          },
                        ),
                      ),
                       ListTile(
                        title: const Text('Designing'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedDesigner,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedDesigner = value!;
                            });
                          },
                        ),
                      ), 
                      ListTile(
                        title: const Text('Front end developing'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedFrontend,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedFrontend = value!;
                            });
                          },
                        ),
                      ),
                       ListTile(
                        title: const Text('Back end developing'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedBackend,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedBackend = value!;
                            });
                          },
                        ),
                      ),
                    ]),
   ),
 ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70.0, top: 8,right: 70),
                          child: Card(
                            color: const Color.fromARGB(255, 249, 247, 249),
                            child: DropdownButton(alignment: AlignmentDirectional.bottomEnd,
                              borderRadius: BorderRadius.circular(10),dropdownColor: const Color.fromARGB(255, 249, 247, 249),
                              iconSize: 30,
                                                  value: dropdownvalue,
                                                  icon: const Icon(Icons.arrow_drop_down),
                                                  items: items.map((String v) {
                            return DropdownMenuItem(
                                value: v,
                                child: Text(v));
                                                  }).toList(),
                                                  onChanged: (v) {
                            setState(() {
                              dropdownvalue = v ?? ' No Value';
                            });
                                                  }),
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
                 
                  
            ),
      ),
      )));
  }

  TextField txtfield({required String hintText}) {
    return TextField(
                          decoration: InputDecoration(
                            hintText: hintText,
                            filled: true,
                            fillColor:const Color.fromARGB(255, 249, 247, 249),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                                         );
  }
}



enum Gender {male , female, other}