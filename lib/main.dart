import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_demo/games/klondike_game.dart';

void main() {
  runApp(
    GameWidget(
      game: KlondikeGame(),
      overlayBuilderMap: {
        'PauseMenu': (context, game) {
          return Container(
            color: const Color(0xFF000000),
            child: const Text('A pause menu'),
          );
        },
      },
    ),
  );
}
