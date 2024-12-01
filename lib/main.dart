import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_demo/rikishi_game.dart';

void main() {
  runApp(GameWidget(
    game: RikishiGame(),
    overlayBuilderMap: {
      'PauseMenu': (context, game) {
        return Container(
          color: const Color(0xFF000000),
          child: const Text('A pause menu'),
        );
      },
    },
  ));
}
