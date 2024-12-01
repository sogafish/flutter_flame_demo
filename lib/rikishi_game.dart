import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter_flame_demo/components/rikishi.dart';
import 'package:flutter_flame_demo/components/rikishi_world.dart';

class RikishiGame extends FlameGame {
  Rikishi _rikishi = Rikishi();
  RikishiWorld _rikishiWorld = RikishiWorld();

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(_rikishiWorld);
    await add(_rikishi);
    _rikishi.position = _rikishiWorld.size / 1.5;
    camera.follow(_rikishi);
    // camera.followComponent(
    //   _rikishi,
    //   worldBounds:
    //       Rect.fromLTRB(0, 0, _rikishiWorld.size.x, _rikishiWorld.size.y),
    // );
  }
}
