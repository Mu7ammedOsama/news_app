import 'package:flutter/material.dart';

// models
import 'package:news_app/models/cardModel.dart';

// widgets
import 'package:news_app/widgets/cardWidget.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  final List<CardModel> cards = const [
    CardModel(cardImage: "assets/business.png", cardName: "Business"),
    CardModel(cardImage: "assets/entertainment.png", cardName: "Entertainment"),
    CardModel(cardImage: "assets/general.png", cardName: "General"),
    CardModel(cardImage: "assets/health.png", cardName: "Health"),
    CardModel(cardImage: "assets/science.png", cardName: "Science"),
    CardModel(cardImage: "assets/sports.png", cardName: "Sports"),
    CardModel(cardImage: "assets/technology.jpeg", cardName: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) => CardWidget(card: cards[index]),
      ),
    );
  }
}
