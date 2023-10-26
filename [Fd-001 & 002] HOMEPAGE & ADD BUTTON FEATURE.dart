import 'package:flutter/material.dart';
import 'Tapped.dart';

void main() => runApp(const Dormie());

class Dormie extends StatelessWidget {
  const Dormie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 5, 7, 125),
          title: const Text(
            'Finding Dormie',
            style: TextStyle(
              color: Color.fromARGB(255, 227, 216, 216),
              fontStyle: FontStyle.italic,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 40,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 40,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContainerWidget(),
              ContainerWidget2(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomAppBar(),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 20, 2, 92),
          width: 2,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/Centro Square.png',
            fit: BoxFit.cover,
            width: 300,
            height: 150,
          ),
          const Positioned(
            left: 10,
            bottom: 20,
            child: Row(
              children: [
                Text(
                  'Centro Square',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 4), // Add spacing between text and icon
                Icon(
                  Icons.thumb_up_sharp,
                  color: Color.fromARGB(255, 25, 122, 233),
                  size: 14,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.place,
                  color: Color.fromARGB(255, 251, 0, 0),
                  size: 14,
                ),
                SizedBox(width: 4), // Add spacing between icon and text
                Text(
                  '70 Peñafrancia St, Naga, Camarines Sur',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerWidget2 extends StatelessWidget {
  const ContainerWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 20, 2, 92),
          width: 2,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/Orange Dormitel.png',
            fit: BoxFit.cover,
            width: 300,
            height: 150,
          ),
          const Positioned(
            left: 10,
            bottom: 20,
            child: Row(
              children: [
                Text(
                  'Centro Square',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 4), // Add spacing between text and icon
                Icon(
                  Icons.thumb_up_sharp,
                  color: Color.fromARGB(255, 25, 122, 233),
                  size: 14,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.place,
                  color: Color.fromARGB(255, 251, 0, 0),
                  size: 14,
                ),
                SizedBox(width: 4), // Add spacing between icon and text
                Text(
                  'Blumentritt St, Barangay Tinago, Naga, Camarines Sur',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 11),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              // Handle the add button press
            },
            icon: const Icon(Icons.add), // Change this icon to the one you want
            color: const Color.fromARGB(255, 20, 2, 92),
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {
              // Handle the home button press
            },
            icon:
                const Icon(Icons.home), // Change this icon to the one you want
            color: const Color.fromARGB(255, 20, 2, 92),
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {
              // Handle the profile button press
            },
            icon: const Icon(
                Icons.person), // Change this icon to the one you want
            color: const Color.fromARGB(255, 20, 2, 92),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}
