import 'package:flutter/material.dart';

// models
import 'package:news_app/models/cardModel.dart';

// views
import 'package:news_app/views/categoryView.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CategoryView(category: card.cardName),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 224,
          height: 128,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(card.cardImage),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              card.cardName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
