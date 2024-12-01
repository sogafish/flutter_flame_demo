import 'package:flame/components.dart';

class RikishiWorld extends SpriteComponent with HasGameRef {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('bg01.jpg');
    size = sprite!.originalSize;
  }
}
