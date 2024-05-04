  import 'package:flutter/material.dart';

  class Paymethode extends StatelessWidget {
    const Paymethode({ super.key });

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 246, 246),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 72, 122),
          title: const Text('Payment Methode',
          style: TextStyle(color:  Color.fromARGB(255, 255, 246, 246),)
          
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const SizedBox(height: 16),
              ElevatedButton(
                 
                style: ElevatedButton.styleFrom(
                          foregroundColor:const Color.fromARGB(255, 255, 246, 246),

                          backgroundColor: const Color.fromARGB(255, 10, 72, 122),
                          elevation: 0,
                        ),
                onPressed: () {
                Navigator.pushNamed(
                        context,'/homepage');
                  debugPrint('Pay button pressed');
                },

                child: const Text('PAY OFFLINE'),
              ),
              
              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                          foregroundColor:const Color.fromARGB(255, 255, 246, 246),

                          backgroundColor: const Color.fromARGB(255, 10, 72, 122),
                          elevation: 0,
                        ),
                 onPressed: () {
                Navigator.pushNamed(
                        context,'/pay');
                  debugPrint('Sign in button pressed');
                },
                child: const Text('PAY ONLINE'),
              ),
              
              
            ],
          ),
        ),
      );
    }
  }
