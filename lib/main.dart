import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Feed'),
        ),
        body: ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;
        final itemCount = 10;

        return isPortrait
            ? ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                      height: 6
                  ),

                ],
              ),
            );
          },
        )
            : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                      height: 6
                  ),

                ],
              ),
            );
          },
        );
      },
    );
  }
}
