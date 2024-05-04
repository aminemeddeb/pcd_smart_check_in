import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      appBar: AppBar(
        title: const Text('Scan', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
        backgroundColor: const Color.fromARGB(255, 10, 72, 122)
      

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              //    Image.network(
              //     width: 150,
              //     fit: BoxFit.cover,
              //       height: 150,
              //       '' , 
              // ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Full Name',
                ),
              ),
              // const Flexible(
              //   child: Row( children: [ 
                //   TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     hintText: 'Date of Birth',
                //   ),
                // ),
                //    TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     hintText: 'Place of Birth',
                //   ),
                // ),
                
              //   ], 
              //   ),
              // ) , 
              const SizedBox(height: 16),
            
              const TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Date of Birth',
),
),
                const SizedBox(height: 16),
                const  TextField(
                                 decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Place of Birth',
                                 ),
                               ),
              const SizedBox(height: 16),
            
                const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nationality',
                ),
              ),
                const SizedBox(height: 16),
            
                const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Full Name',
                ),
              ),
              // const SizedBox(height: 16),
              // const TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     hintText: 'Tel',
              //   ),
              // ),
              // const SizedBox(height: 16),
              // const TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     hintText: 'Mail',
              //   ),
              // ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Num Passport',
                ),
              ),
              const SizedBox(height: 16),
            
              ElevatedButton(
                  style: ElevatedButton.styleFrom(  
                     foregroundColor:Colors.white,
                          backgroundColor: const Color.fromARGB(255, 10, 72, 122) ,
                    elevation: 0,
                    ), 
               
                onPressed: () {
                  Navigator.pushNamed(context, '/scanscreen');
                  debugPrint('Sign in button pressed');
                },
                child: const Text('Scan'),
              ),
              
              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(  
                      foregroundColor:Colors.white,
                      backgroundColor: const Color.fromARGB(255, 10, 72, 122) ,
                      elevation: 0,
                    ), 
               
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                  debugPrint('Sign in button pressed');
                },
                child: const Text('Submit'),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}

