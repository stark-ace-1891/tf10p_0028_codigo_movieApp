import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "Hola",
            ),
            backgroundColor: Colors.indigo,
            expandedHeight: 200,
            flexibleSpace: Container(
              color: Colors.black,
            ),
            pinned: true,
            floating: true,
            snap: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
