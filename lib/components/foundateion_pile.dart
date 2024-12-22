import 'package:flame/components.dart';
import 'package:flutter_flame_demo/components/card.dart';
import 'package:flutter_flame_demo/games/klondike_game.dart';
import 'package:flutter_flame_demo/helpers/suit.dart';

class FoundationPile extends PositionComponent {
  FoundationPile(int intSuit, {super.position})
      : suit = Suit.fromInt(intSuit),
        super(size: KlondikeGame.cardSize);

  final Suit suit;

  final List<Card> _cards = [];

  void acquireCard(Card card) {
    assert(card.isFaceUp);
    card.position = position;
    card.priority = _cards.length;
    _cards.add(card);
  }
}
