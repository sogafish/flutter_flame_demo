import 'package:flame/components.dart';

class Rikishi extends SpriteComponent with HasGameRef {
  Rikishi() : super(size: Vector2.all(200.0));

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('rikishi.png');
    position = gameRef.size / 2;
  }
}
