import 'package:flame/components.dart';
import 'package:flutter_flame_demo/components/card.dart';
import 'package:flutter_flame_demo/games/klondike_game.dart';

class WastePile extends PositionComponent {
  WastePile({super.position}) : super(size: KlondikeGame.cardSize);

  final List<Card> _cards = [];

  void acquireCard(Card card) {
    assert(card.isFaceUp);
    card.position = position;
    card.priority = _cards.length;

    _cards.add(card);
  }
}
