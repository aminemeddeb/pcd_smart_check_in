// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/screens/home/uihelper.dart';
// import 'package:flutter_application_2/services/auth.dart' ;
// class SignInPage extends StatefulWidget {
//   const SignInPage({ super.key });

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   // TextEditingController emailController=TextEditingController() ;
//   // TextEditingController passwordController=TextEditingController() ;
  
//   // //  final AuthService _authService = AuthService();
  
//   get child => null;
//   // final AuthService _auth = AuthService(); 
//   final AuthService _authService = AuthService(); // Assuming AuthService class
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
// //////////////////////
//   Future<void> _signInWithEmailAndPassword() async {
//     try {
//       final email = _emailController.text.trim();
//       final password = _passwordController.text.trim();

//       if (email.isEmpty || password.isEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Please enter email and password'),
//           ),
//         );
//         return;
//       }

//       final userCredential = await _authService.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       if (userCredential != null) {
//         // Navigate to homepage or perform other actions
//         // ignore: use_build_context_synchronously
//         Navigator.pushNamed(context, '/homepage');
//       }
//     } catch (e) {
//       // Handle errors gracefully
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Sign in failed: ${e.toString()}'),
//         ),
//       );
//     }
//   }
//   /////////////////////////
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign In'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(
//                   labelText: 'Email',
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//             const SizedBox(height: 16),
//             TextField(
//                 controller: _passwordController,
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                   isDense: true, // Optional: make password field denser
//                 ),
//                 obscureText: true,
//               ),
//             const SizedBox(height: 30), 
//               ElevatedButton(
//              onPressed: _signInWithEmailAndPassword,
//               child: const Text('Sign In'),
//             ),
            
//             //   dynamic result = await _auth.signInAnon(); 
//             //   if( result != null ){
               
//             //    //Navigator.pushNamed( context,'/homepage');
//             //     debugPrint('Sign in button pressed');
//             //   }
//             //   else {
//             //     debugPrint('Not available');
//             //   }
              
//             // },"Sign In" ),
//             // // const TextField(
//             //   decoration: InputDecoration(
//             //     border: OutlineInputBorder(),
//             //     hintText: 'Email',
//             //   ),
//             // ),
//             // const SizedBox(height: 16),
//             // const TextField(
//             //   obscureText: true,
//             //   decoration: InputDecoration(
//             //     border: OutlineInputBorder(),
//             //     hintText: 'Password',
//             //   ),
//             // ),
//             // const SizedBox(height: 16),
//             // ElevatedButton(
//             //   onPressed: () {
//             //    Navigator.pushNamed(
//             //           context,'/homepage');
//             //     debugPrint('Sign in button pressed');
//             //   },
//             //   child: const Text('Sign in'),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api, prefer_final_fields, unnecessary_null_comparison
import 'package:flutter/material.dart';
// Import firestore if you still want to use it (not recommended for auth)
// import 'package:cloud_firestore/cloud_firestore.dart';  

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});


  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // bool _isLoading = false; // Flag for loading state

  // Future<void> _signInWithEmailAndPassword() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailController.text.trim() ,
  //    password: _passwordController.text.trim(),
  //    );
  //   }
  
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String email =''; 
  String password  =''; 
  String error =''; 

  @override
void dispose ( ){
  _emailController.dispose(); 
  _passwordController.dispose();
  super.dispose(); 

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 72, 122),
        title: const Text('Sign In', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  // controller: _emailController,
                  validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password.';
                        } else if (value.length < 8) {
                          return 'Enter a password 8+ chars long.';
                        }
                        return null;
                         // No validation error
                      },
                onChanged: (value) {
                    setState( () => email = value );
                  },
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(12)),

                    ),
                    hintText: 'Email',
                    fillColor: Color.fromARGB(255, 233, 227, 227),
                    filled: true,
                    isDense: true, // Optional: make password field denser
                  ),
                  obscureText: false,
                ),
                const SizedBox(height: 16.0),
                TextField(
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //         return 'Please enter your password.';
                  //       } else if (value.length < 8) {
                  //         return 'Enter a password 8+ chars long.';
                  //       }
                  //       },
                  //controller: _passwordController,
                  onChanged: (value) {
                    setState( () => password = value );
                  },
                
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
            
                      
                      
                      ),
                    
                    focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
            
                    ),
                    hintText: 'Password',
                    fillColor: Color.fromARGB(255, 233, 227, 227),
                    filled: true,
                    isDense: true, // Optional: make password field denser
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(  
                    foregroundColor: const Color.fromARGB(255, 10, 72, 122),  
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    ), 
                    
                        onPressed: ()  {
                          
                           Navigator.pushNamed(
                      context,'/homepage');
                          },
                          child: Text('Sign In'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AuthService {
  registerWithEmailAndPassword(String email, String password) {}
}
