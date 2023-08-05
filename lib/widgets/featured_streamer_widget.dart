import 'package:flutter/material.dart';
import 'package:game_stream/models/featured_streamer.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedStreamer extends StatelessWidget {
  const FeaturedStreamer({super.key});

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
              "Featured Streamers",
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
            height: 242,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                children: [
                  index == 0
                      ? const SizedBox(width: 24)
                      : const SizedBox(width: 0),
                  SizedBox(
                    width: 260,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 260,
                          height: 180,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/${featuredStreamers[index].thumbnail}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  "assets/images/btn-play.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/${featuredStreamers[index].picture}",
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(width: 12),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            "${featuredStreamers[index].name}\n",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: featuredStreamers[index].gameName,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: const Color(0xFF7E8BB6),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  index == featuredStreamers.length - 1
                      ? const SizedBox(width: 24)
                      : const SizedBox(width: 0),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: featuredStreamers.length,
            ),
          ),
        ],
      ),
    );
  }
}
