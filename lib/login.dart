
import 'package:flutter/material.dart';
import 'package:todoo/home.dart';
import 'package:todoo/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
   TextEditingController Password= TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Welcome Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.blue,
    ),
                
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Container(
                padding: EdgeInsets.all(20),
                child: Form(child: Column(
                  children: [
                    Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: TextFormField(
                        controller:email ,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Colors.grey)
                          ),
                          labelText: 'Email'
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: TextFormField(
                        controller:Password ,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1,color: Colors.grey)
                          ),
                          labelText: 'Password'
                        ),
                      ),
                    ),
                     Row(
                              children: [
                                Text('Forgot password'),
                                
                              ],
                              mainAxisAlignment: MainAxisAlignment.end,
                            ),
                          
                      
                      SizedBox(
                      height: 30,
                    ),
                    
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: FloatingActionButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                      },
                      child: Text('Login'),
                     shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)

                      ),
                      
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(child: Text('Or')),
                    SizedBox(
                      height: 10,

                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: FloatingActionButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                      },
                      child: Text('Sign Up'),
                     shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)
                     ))

                    )
                   ],
                ),),
              )
            ],
          ),
        ),
      ),


    );
    
  }
}































































































