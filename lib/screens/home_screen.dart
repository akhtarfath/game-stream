import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_stream/widgets/bottom_nav_bar_widget.dart';
import 'package:game_stream/widgets/browse_game_widget.dart';
import 'package:game_stream/widgets/categories_widget.dart';
import 'package:game_stream/widgets/featured_streamer_widget.dart';
import 'package:game_stream/widgets/top_nav_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return const Scaffold(
      backgroundColor: Color(0xFF081131),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopNavBar(),
                SizedBox(height: 30),
                Categories(),
                SizedBox(height: 30),
                FeaturedStreamer(),
                SizedBox(height: 30),
                BrowseGames(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
