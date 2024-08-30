import 'package:eagleexpress/components/my_textfield.dart';
import 'package:eagleexpress/login_page.dart';
import 'package:flutter/material.dart';

import 'components/my_button.dart';

class Register extends StatelessWidget {
  final TextEditingController email = TextEditingController() ;
  final TextEditingController name = TextEditingController() ;
  final TextEditingController password = TextEditingController() ;
  final TextEditingController confirmPassword = TextEditingController() ;
  Register() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop() ;
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          const SizedBox(height: 10,),
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                
                Text("Sign up",style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Text("create an account",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),)
              ],
            ),
          ),
          const SizedBox(height: 30,),
          MyTextField(
            text: name,
            hinText: "Name",
            obscureText: false,
            icon: const Icon(Icons.person),
          ),
          const SizedBox(height: 30,),
          MyTextField(
            text: email,
            hinText: "Email",
            obscureText: false,
            icon: const Icon(Icons.email),
          ),
          const SizedBox(height: 30,),
          MyTextField(
            text: password,
            hinText: "Password",
            obscureText: true,
            icon: const Icon(Icons.password),
          ),
          const SizedBox(height: 30,),
          MyTextField(
            text: confirmPassword,
            hinText: "confirm password",
            obscureText: true,
            icon: const Icon(Icons.password),
          ),
          const SizedBox(height: 30,),
          //sign in button
             MyButton(
              text: "Sign Up",
              onTap: ()=>(), onPressed: () {  },
            ),
            const SizedBox(height: 15,),
          //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                      ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0),
                    child:  Text(
                      'Or continue with',
                     style: TextStyle(color:Colors.grey),
                    ),
                  ),
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
              ],
                        ),
            ),
          const SizedBox(height: 15,),
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15)
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/google.png",width: 50,height: 30,),
                const SizedBox(width: 10,),
                const Text("Continue with Google",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16
                ),)
              ],
            ),
          ),
          //not a member? register  now
            
            const SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?',
                style: TextStyle(color:Colors.grey,),
                ),
              
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:  (context) {
                        return LoginPage() ;
                    })) ;
                  },
                  child: const Text('Login',
               style:  TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                
                ),
                ),
              ],
            )
          
        ],
      ),
    
      )
      );
  }
}