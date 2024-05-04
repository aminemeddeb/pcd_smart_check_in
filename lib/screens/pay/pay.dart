import 'package:flutter/material.dart';



class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 72, 122),
        title: const Text('Pay',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)), 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Full Name',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Tel',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mail',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Num Passport',
              ),
            ),
             const SizedBox(height: 16),
           
            ElevatedButton(
                style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255,246, 246),  
                  backgroundColor: const Color.fromARGB(255, 10, 72, 122),  ),
                 
              onPressed: () {
               Navigator.pushNamed(
                      context,'/homepage');
                debugPrint('Sign in button pressed');
              },
              
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
