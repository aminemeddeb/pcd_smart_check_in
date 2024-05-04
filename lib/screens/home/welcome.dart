// import 'package:flutter/material.dart';



// class Home extends StatelessWidget {
//   const Home({super.key});

  
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(

//       appBar: AppBar(
//         title: const Text('Smart Check In',
        
//         style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//         centerTitle: true,
//         backgroundColor: Colors.blue[300],
//       ),
//       body: Container(
//           decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/back.jpg',
//             fit: BoxFit.cover,
//           ),
//         ),
//           ),
//         child: Column(
        
//           mainAxisAlignment: MainAxisAlignment.center,
            
//           children: <Widget>[
//             const Positioned(
              
                
//               child :Text('Welcome  To Our App',
//               style: TextStyle(fontWeight: FontWeight.w900,
//               fontSize: 20,
//               ),
//               ),
//             ),
//             const SizedBox(height: 250),
//             Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Row(
                      

//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
                
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(  
//                     foregroundColor:  const Color.fromARGB(255, 0, 0, 0) , 
//                     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//                     elevation: 0,
//                     ), 
                    
//                   onPressed: () {
//                     // Add your button click logic here
//                     debugPrint('Sign UP');
//                     Navigator.pushNamed(
//                       context,'/signuppage');
//                   },
//                   child: const Text('Sign Up'),
//                 ),
//                 const SizedBox(width: 20), // Add space between buttons
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(  
//                     foregroundColor:  const Color.fromARGB(255, 255, 255, 255) , 
//                     backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//                     elevation: 0,
//                     ), 
                    
//                   onPressed: () {
//                     // Add your button click logic here
//                     debugPrint('Sign IN');
//                     Navigator.pushNamed(
//                       context,'/signinpage');
//                   },
//                   child: const Text('Sign In'),
//                 ),
//               ],
//             )
                    
//                     ),
            
//           ],
//         ),
      
//       ),
//       ),
//     );
// }
// }
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      
        appBar: AppBar(
          title: const Text(
            'Smart Check In',
            style: TextStyle(fontWeight: FontWeight.bold ,
            color: Color.fromARGB(255,255, 255, 255)
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 10, 72, 122),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/back.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // const Positioned(
                //   child: Text(
                //     'Welcome  To Our App',
                //     style: TextStyle(
                //       fontWeight: FontWeight.w900,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 250),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 10, 72, 122),
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        onPressed: () {
                          debugPrint('Sign UP');
                          Navigator.pushNamed(context, '/signuppage');
                        },
                        child: const Text('Sign Up'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(255, 10, 72, 122),
                          elevation: 0,
                        ),
                        onPressed: () {
                          debugPrint('Sign IN');
                          Navigator.pushNamed(context, '/signinpage');
                        },
                        child: const Text('Sign In'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
