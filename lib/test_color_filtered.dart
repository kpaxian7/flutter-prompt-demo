import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: TestColorFilteredPage(),
    ),
  ));
}

class TestColorFilteredPage extends StatelessWidget {
  const TestColorFilteredPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.yellow, BlendMode.srcOut),
      child: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: Colors.transparent,
          )),
          Positioned(
              top: 100,
              left: 100,
              child: Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}
