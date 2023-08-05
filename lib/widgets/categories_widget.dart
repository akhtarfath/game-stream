import 'package:flutter/material.dart';
import 'package:game_stream/models/categories_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
              "Categories",
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
            height: 120,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                children: [
                  index == 0
                      ? const SizedBox(width: 24)
                      : const SizedBox(width: 0),
                  Container(
                    width: 100,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E1839),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/${categories[index].image}",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          categories[index].title,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFFFFFFFF),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  index == categories.length - 1
                      ? const SizedBox(width: 24)
                      : const SizedBox(width: 0),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
