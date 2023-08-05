import 'package:flutter/material.dart';
import 'package:game_stream/models/games_model.dart';
import 'package:google_fonts/google_fonts.dart';

class BrowseGames extends StatelessWidget {
  const BrowseGames({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Browse Games",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: const Color(0xFF7E8BB6),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                children: [
                  index == 0
                      ? const SizedBox(width: 24)
                      : const SizedBox(width: 0),
                  Image.asset("assets/images/${games[index].thumbnail}"),
                  index == games.length - 1
                      ? const SizedBox(width: 24)
                      : const SizedBox(width: 0),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: games.length,
            ),
          ),
        ],
      ),
    );
  }
}
