## [0.7.3]
* hotfix: notify finish in `AnimatedObjectOnce`.
* update `id` to dynamic in `receiveDamage`  and `JoystickAction`.

## [0.7.2]
* hotfix render last frame in `AnimatedObjectOnce`.

## [0.7.1]
* makes `lighting` accessible through the `gameRef`.
* create `FollowerObject`.

## [0.7.0]
* BREAKING CHANGE: improvement in animations to SimplePlayer and SimpleEnemy. Now use `SimpleDirectionAnimation` to manipulate animations.
* add `GameColorFilter`. It is now possible to add color filter in the game.
* Possible to load maps made by Tiled from url. Just pass the link as path.

## [0.6.27]
* little performance improvement;
* remove mandatory joystick in widget;
* remove param gameComponent in `LightingConfig`;

## [0.6.26]
* improvements image cache in map load by Tiled;

## [0.6.25]
* fix `tileTypeBelow()` and add `tileTypesBelow()`;

## [0.6.24]
* add method `tileTypeBelow()` in `GameComponent` to get type tile;
* improvements in gestures mixin;

## [0.6.23]
* improvement in map.
* BREAKING CHANGE: remove param `isSensor` from `GameDecoration` an create mixin `Sensor`.
* update example (Potion,Spikes).

## [0.6.22]
* fix update Camera.

## [0.6.21]
* improvement in camera system.
* update flame.

## [0.6.20]
* Add mixin `Attackable`.

## [0.6.19]
* Fix issue [#55](https://github.com/RafaelBarbosatec/bonfire/issues/55)
* Update Flame to 0.25.0

## [0.6.18]
* BREAKING CHANGES: change `forceTileSize` type double to Size.
* Add support to offsetX and offsetY in TileMap layers.

## [0.6.17]
* hotfix Tiled - Support multiTileset.

## [0.6.16]
* improvement in JoystickActions
* improvement in seeAndMoveToPlayer (Enemy)

## [0.6.15]
* improvement in `seeEnemy` and `seePlayer`
* BREAKING CHANGES: rename prams `visionCells` to `radiusVision` in `seeEnemy` and `seePlayer`

## [0.6.14]
* hotfix extension simpleAttackMeleeByDirection and simpleAttackMelee

## [0.6.13]
* improvements in TiledWorldMap.
* BREAKING CHANGES: rename prams with `animation` to `anim` in SimpleEnemy.
* BREAKING CHANGES: rename mixin `WithLighting` to `Lighting`.
* BREAKING CHANGES: rename param `tiledMap` to `map` in BonfireTiledWidget.
* add animIdleTopLeft, animIdleBottomLeft, animIdleTopRight, animIdleBottomRight in SimplePlayer and SimpleEnemy.
* add `transitionBuilder` in BonfireTiledWidget if desired to add a custom display animation
* add `durationShowAnimation` in BonfireTiledWidget

## [0.6.12]
* add diagonal in Direction(enum).

## [0.6.11]
* hotfix addFastAnimation.

## [0.6.10]
* hotfix addFastAnimation.

## [0.6.9]
* update extensions.
* add animation in diagonal in SimpleEnemy and SimplePlayer.
* add extensions getAnimation and getSprite in Image (dart:ui).

## [0.6.8]
* improvements show FPS
* update example
* update extensions enemy.
* update Flame.

## [0.6.7]
* hotfix seeAndMoveToAttackRange.

## [0.6.6]
* Add zoom in moveToPlayerAnimated and moveToPositionAnimated.
* improvements in seeAndMoveToAttackRange.
* add animation show map when load TiledMap.

## [0.6.5]
* Optimizations when loading maps built with Tiled

## [0.6.4]
* add Zoom camera by [rezendegc](https://github.com/rezendegc).
* improvements TiledObjects.
* improvements Joystick.

## [0.6.3]
* hotfix Tiled with tile null in TileSet.

## [0.6.2]
* hotfix render.

## [0.6.1]
* add [Tiled](https://www.mapeditor.org/) json support (BonfireTiledWidget)
* BREAKING CHANGES: gestures improvements (now use mixin TapGesture or DragGesture)
* BREAKING CHANGES: align collision
* add support drag gestures
* add support multiCollision to Decoration and Tile.
* add support Tile animated.

## [0.5.1] - 03/06/2020
* hotfix in FlyingAttackObject
* adds sensor functionality to GameDecoration

## [0.5.0] - 03/06/2020
* BREAKING CHANGES: remove 'positionInWorld', everything uses 'position' now.
* improvements in Camera system by [rezendegc](https://github.com/rezendegc)
* improvements in JoystickDirectional

## [0.4.2] - 23/05/2020
* improvements in TextDamage
* performance improvements

## [0.4.1] - 23/05/2020
* add lightingConfig in extensions

## [0.4.0] - 23/05/2020
* BREAKING CHANGES in joystick and player in 'void joystickAction(JoystickActionEvent event)'
* adds support for direction in actions of the joystick
* adds support for basic lighting
* update Flame to 0.21.0
* performance improvements


## [0.3.3] - 13/05/2020

* Improvements in FlyingAttackAngleObject.
* Fix bug issue #22.

## [0.3.2] - 9/05/2020

* Fix bug extension enemy.

## [0.3.1] - 9/05/2020

* Update Flame.
* Add identify in attacks.

## [0.3.0] - 4/05/2020 [ BREAKING CHANGE ]

* Improvements render components
* the Player was dismembered in Player(base) ,SimplePlayer(similar old Player) and RotationPlayer
* the Enemy was dismembered in Enemy(base) ,SimpleEnemy(similar old Player) and RotationEnemy
* created FlyingAttackAngleObject
* add 'rotateRadAngle' in AnimatedObjectOnce

## [0.2.12] - 30/04/2020

* Improvements on the JoystickKeyBoard.

## [0.2.11] - 29/04/2020

* Improvements change size map

## [0.2.10] - 29/04/2020

* Fix bug player;

## [0.2.9] - 29/04/2020

* Fix bug player update

## [0.2.8] - 29/04/2020

* change of speed parameter to points / seconds.

## [0.2.7] - 29/04/2020

* improvements pointer detector.

## [0.2.6] - 29/04/2020

* improvements bleeding pixel.
* add support web in example

## [0.2.5] - 28/04/2020

* Flutter Web test.

## [0.2.4] - 27/04/2020

* add bleeding pixel in GameDecoration.sprite and GameDecoration.animation.

## [0.2.3] - 27/04/2020

* Fix bug Joystick fixed

## [0.2.2] - 26/04/2020

* Improvements Joystick
    - better sensitivity
    - possibility of obtaining intensity
    - possibility of obtaining angle
* Improvements player movement windows
* Improvements enemy movement
* Add TextInterfaceComponent
* Add bleeding pixel in decorations

## [0.2.0] - 22/04/2020

* Improvements in GameInterface (now it’s easier to add elements with 'InterfaceComponent')
* Improvements in Joystick
* Update readme

## [0.1.11] - 20/04/2020

* add customize collisionAreaColor and constructionModeColor
* Improvements player

## [0.1.10] - 17/04/2020

* add constructor Tile.fromSprite
* add constructor GameDecoration.sprite
* add constructor GameDecoration.animation

## [0.1.9] - 15/04/2020

* remove scaffold in BonfireWidget

## [0.1.8] - 15/04/2020

* update flame to 0.19.1.
* add bleeding pixel in map.
* modify parameter sprite in decoration.

## [0.1.7] - 13/04/2020

* add margin in seeAndMoveToPlayer(Extension enemy).

## [0.1.6] - 13/04/2020

* Improvements in enemy.

## [0.1.5] - 13/04/2020

* Improvements in enemy movements.
* Improvements in map resize.

## [0.1.4] - 10/04/2020

* Update Flame.
* Improvements in BonfireWidget.
* Add onTapDown, onTapUp, onTapMove, onTapCancel in components isTouchable = true

## [0.1.3] - 9/04/2020

* Improvements in player and enemy extensions.
* Add GameController.

## [0.1.2] - 8/04/2020

* Improvements in player and enemy extensions.
* Add ShowAreaCollision.

## [0.1.1] - 6/04/2020

* Improvements in gestures.
* Improvements in joystick.
* Decorations can now be touched.

## [0.1.0] - 3/04/2020

* First version stable! Possible to create complete games like this: https://github.com/RafaelBarbosatec/darkness_dungeon
* Update readme and demo.

## [0.0.16] - 2/04/2020

* Update extensions enemy and player

## [0.0.15] - 2/04/2020

* Add callback destroyedObject in FlyingAttackObject
* Add TalkDialog to create your conversation.

## [0.0.14] - 27/03/2020

* Improvements collision
* Improvements collision decoration

## [0.0.13] - 27/03/2020

* Fix bug collision decoration

## [0.0.12] - 27/03/2020

* Update Readme
* Improvements in draw grid

## [0.0.11] - 27/03/2020

* Add draw grid tiles in constructionMode.
* Improvements in FlyingAttackObject

## [0.0.10] - 26/03/2020

* Add constructionMode. (HotReload update game too)

## [0.0.9] - 26/03/2020

* Map size improvements

## [0.0.8] - 25/03/2020

* Collision system improvements
* Add 'drawPositionCollision(Canvas canvas)'

## [0.0.7] - 25/03/2020

* Add MapExplorer when not set Player
* Add BackgroundGame

## [0.0.6] - 24/03/2020

* Fix bug FlyingAttackObject.

## [0.0.5] - 24/03/2020

* Add camera movements.
* Fix delay between map and components.
* Update readme.

## [0.0.4] - 22/03/2020

* Organization improvements.
* Update readme.

## [0.0.3] - 20/03/2020

* Add AnimatedFollowerObject and 'seeEnemy' in player.
* Update readme.

## [0.0.2] - 18/03/2020

* Update readme.

## [0.0.1] - 18/03/2020

* Starts project with basic mechanics.
