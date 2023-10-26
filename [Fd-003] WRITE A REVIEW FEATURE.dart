import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Room Reviews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Orange Dorm Reviews'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Review> reviews = [
    Review("John"),
    Review("Great room!", 'Assets/image/TAO.jpg'),
    Review("Alice"),
    Review(
      "Comfortable, also great for students",
      'Assets/image/dog.jpg',
    ),
  ];

  void _addReview(String text) {
    setState(() {
      reviews.add(Review(text));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'Assets/image/orange_dorm.jpg',
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reviews.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(reviews[index].text),
                  leading: reviews[index].image != null
                      ? Image.asset(
                          reviews[index].image!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : null,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Write a review',
                    hintText: 'Enter your review here',
                  ),
                  controller: _textController,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_textController.text.isNotEmpty) {
                      _addReview(_textController.text);
                      _textController.clear();
                    }
                  },
                  child: Text('Submit Review'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Review {
  final String text;
  final String? image;

  Review(this.text, [this.image]);
}

final TextEditingController _textController = TextEditingController();
