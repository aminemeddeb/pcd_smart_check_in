import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 246, 246),
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 10, 72, 122),
        title: const Text('Home Page',
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const SizedBox(height: 16),
            ElevatedButton(style: ElevatedButton.styleFrom(  
                    foregroundColor:  const Color.fromARGB(255, 10, 72, 122),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    ), 
                    
              onPressed: () {
               Navigator.pushNamed(
                      context,'/welcome');
                debugPrint('Sign in button pressed');
              },
              child: const Text('BOOK'),
            ),
            
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(  
                    foregroundColor: const Color.fromARGB(255, 10, 72, 122),  
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    ), 
                    
              onPressed: () {
               Navigator.pushNamed(
                      context,'/paymethode');
                debugPrint('Sign in button pressed');
              },
              child: const Text('PAY'),
            ),
            
            const SizedBox(height: 16),
            ElevatedButton(
             style: ElevatedButton.styleFrom(  
                    foregroundColor: const Color.fromARGB(255, 10, 72, 122),  
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    ), 
                    
              onPressed: () {
               Navigator.pushNamed(
                      context,'/checkin');
                debugPrint('Sign in button pressed');
              },
              child: const Text('CHECK IN'),
            ),
            
            const SizedBox(height: 16),
            ElevatedButton(
             style: ElevatedButton.styleFrom(  
                   foregroundColor: const Color.fromARGB(255, 10, 72, 122),  
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    ), 
                    
              onPressed: () {
               Navigator.pushNamed(
                      context,'/welcome');
                debugPrint('Sign in button pressed');
              },
              child: const Text('SERVICES'),
            ),
          ],
        ),
      ),
    );
  }
}
