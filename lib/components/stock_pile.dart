import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter_flame_demo/components/card.dart';
import 'package:flutter_flame_demo/components/waste_pile.dart';
import 'package:flutter_flame_demo/games/klondike_game.dart';

class StockPile extends PositionComponent {
  StockPile({super.position}) : super(size: KlondikeGame.cardSize);

  final List<Card> _cards = [];

  void acquireCard(Card card) {
    assert(!card.isFaceUp);
    card.position = position;
    card.priority = _cards.length;
    _cards.add(card);
  }

  void onTapUp(TapUpEvent event) {
    final wastePile = parent!.firstChild<WastePile>()!;
    if (_cards.isEmpty) {
      wastePile.removeAllCards().reversed.forEach((card) {
        card.flip();
        acquireCard(card);
      });
    } else {
      for (var i = 0; i < 3; i++) {
        if (_cards.isNotEmpty) {
          final card = _cards.removeLast();
          card.flip();
          wastePile.acquireCard(card);
        }
      }
    }
  }
}
