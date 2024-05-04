// import 'package:flutter/material.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({ super.key });

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Email',
//               ),
//             ),
//             const SizedBox(height: 16),
//             const TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Password',
//               ),
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                Navigator.pushNamed(
//                       context,'/homepage');
//                 debugPrint('Sign up button pressed');
//               },
//               child: const Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ super.key });

  @override
  State<SignUpPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
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
        title: const Text('Sign Up',
        style: TextStyle(color: Color.fromARGB(255,255,255,255)),),
        
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
                        return null; // No validation error
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
                  controller: _passwordController,
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
        
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    ), 
                    
                        onPressed: ()  {
                          
                          
                          },
                          child: const Text('Sign Up'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
