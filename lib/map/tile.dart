import 'dart:math';
import 'dart:ui';

import 'package:bonfire/base/game_component.dart';
import 'package:bonfire/util/collision/collision.dart';
import 'package:bonfire/util/collision/object_collision.dart';
import 'package:bonfire/util/controlled_update_animation.dart';
import 'package:flame/position.dart';
import 'package:flame/sprite.dart';
import 'package:flame/text_config.dart';
import 'package:flutter/material.dart';

class Tile extends GameComponent with ObjectCollision {
  Sprite sprite;
  ControlledUpdateAnimation animation;
  final double width;
  final double height;
  final String type;
  Position _positionText;
  Paint _paintText;

  Tile(
    String spritePath,
    Position position, {
    Collision collision,
    this.width = 32,
    this.height = 32,
    this.type,
  }) {
    if (collision != null) collisions = [collision];
    this.position = generateRectWithBleedingPixel(position, width, height);
    if (spritePath.isNotEmpty) sprite = Sprite(spritePath);

    _positionText = Position(position.x, position.y);
  }

  Tile.fromSprite(
    Sprite sprite,
    Position position, {
    Collision collision,
    this.width = 32,
    this.height = 32,
    this.type,
  }) {
    if (collision != null) this.collisions = [collision];
    this.sprite = sprite;
    this.position = generateRectWithBleedingPixel(position, width, height);

    _positionText = Position(position.x, position.y);
  }

  Tile.fromSpriteMultiCollision(
    Sprite sprite,
    Position position, {
    List<Collision> collisions,
    this.width = 32,
    this.height = 32,
    this.type,
    double offsetX = 0,
    double offsetY = 0,
  }) {
    if (collisions != null) this.collisions = [...collisions];
    this.sprite = sprite;
    this.position = generateRectWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );

    _positionText = Position(position.x, position.y);
  }

  Tile.fromAnimation(
    ControlledUpdateAnimation animation,
    Position position, {
    Collision collision,
    this.width = 32,
    this.height = 32,
    this.type,
  }) {
    this.animation = animation;
    if (collision != null) this.collisions = [collision];
    this.position = generateRectWithBleedingPixel(position, width, height);

    _positionText = Position(position.x, position.y);
  }

  Tile.fromAnimationMultiCollision(
    ControlledUpdateAnimation animation,
    Position position, {
    List<Collision> collisions,
    this.width = 32,
    this.height = 32,
    this.type,
    double offsetX = 0,
    double offsetY = 0,
  }) {
    this.animation = animation;
    if (collisions != null) this.collisions = [...collisions];
    this.position = generateRectWithBleedingPixel(
      position,
      width,
      height,
      offsetX: offsetX,
      offsetY: offsetY,
    );

    _positionText = Position(position.x, position.y);
  }

  @override
  void render(Canvas canvas) {
    if (position == null) return;
    animation?.render(canvas, position);
    if (sprite?.loaded() ?? false) {
      sprite.renderRect(canvas, position);
    }

    if (gameRef?.showCollisionArea ?? false) {
      drawCollision(canvas, position, gameRef?.collisionAreaColor);
    }

    if ((gameRef?.constructionMode ?? false) && isVisibleInCamera()) {
      _drawGrid(canvas);
    }
    super.render(canvas);
  }

  void _drawGrid(Canvas canvas) {
    if (_paintText == null) {
      _paintText = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1;
    }
    canvas.drawRect(
      position,
      _paintText
        ..color = gameRef.constructionModeColor ?? Colors.cyan.withOpacity(0.5),
    );
    if (_positionText.x % 2 == 0) {
      TextConfig(
        fontSize: width / 3.5,
      )
          .withColor(
            gameRef.constructionModeColor ?? Colors.cyan.withOpacity(0.5),
          )
          .render(
            canvas,
            '${_positionText.x.toInt()}:${_positionText.y.toInt()}',
            Position(position.left + 2, position.top + 2),
          );
    }
  }

  Rect generateRectWithBleedingPixel(
      Position position, double width, double height,
      {double offsetX = 0, double offsetY = 0}) {
    double sizeMax = max(width, height);
    double bleendingPixel = sizeMax * 0.04;
    if (bleendingPixel > 3) {
      bleendingPixel = 3;
    }
    return Rect.fromLTWH(
      (position.x * width) -
          (position.x % 2 == 0 ? (bleendingPixel / 2) : 0) +
          offsetX,
      (position.y * height) -
          (position.y % 2 == 0 ? (bleendingPixel / 2) : 0) +
          offsetY,
      width + (position.x % 2 == 0 ? bleendingPixel : 0),
      height + (position.y % 2 == 0 ? bleendingPixel : 0),
    );
  }

  @override
  void update(double dt) {
    animation?.update(dt);
    super.update(dt);
  }
}
