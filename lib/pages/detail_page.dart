import 'package:flutter/material.dart';
import 'package:tf10p_0028_codigo_movieapp/ui/general/colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "The Batman",
            ),
            backgroundColor: kBrandPrimaryColor,
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://www.cinemascomics.com/wp-content/uploads/2021/11/51ADA2BC-9F0F-493C-A8C0-A4CAF546053A.jpeg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kBrandPrimaryColor,
                          kBrandPrimaryColor.withOpacity(0.01),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
