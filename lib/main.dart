import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame_demo/rikishi_game.dart';

void main() {
  final game = RikishiGame();
  runApp(GameWidget(game: game));
}
