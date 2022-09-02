import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              // color: Colors.red,
              child: Image(
                image: AssetImage('asset/images/ጎጆ.png'),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Row(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  // Icon(Icons.search),
                  // Text('Search'),
                ],
              ),
              width: 270,
              height: 30,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
