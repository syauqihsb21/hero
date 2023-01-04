import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Wdiget'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              //memperbesar gambar saat diklik
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Bunga1()));
            },
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    leading: Hero(
                      tag: ' Bunga 1 ',
                      child: Image(
                        image: AssetImage('bunga/bunga1.jpg'),
                        fit: BoxFit.fill,
                        height: 80,
                        width: 80,
                      ),
                    ),
                    title: Text('Bunga 1'),
                    subtitle: Text('Rp.150.000.-'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class Bunga1 extends StatelessWidget {
  const Bunga1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bunga 1'),
      ),
      body: const Center(
        child: Hero(
          tag: 'Bunga 1',
           child: Image(
            image: AssetImage('bunga/bunga1.jpg'),
            ),
            ),

            
      ),
    );
  }
}
    

