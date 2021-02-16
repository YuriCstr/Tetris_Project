import 'package:flutter/material.dart';
import 'blocks/block.dart';
import 'blocks/Iblock.dart';
import 'blocks/Jblock.dart';
import 'blocks/Lblock.dart';
import 'blocks/Sblock.dart';
import 'blocks/sqBlock.dart';
import 'blocks/Tblock.dart';
import 'blocks/Zblock.dart';
import 'dart:math';
import 'game.dart';

Block getRandomBlock() {
  int randomNr = Random().nextInt(7);
  switch (randomNr) {
    case 0:
      return IBlock(BOARD_WIDTH);
    case 1:
      return JBlock(BOARD_WIDTH);
    case 2:
      return LBlock(BOARD_WIDTH);
    case 3:
      return SBlock(BOARD_WIDTH);
    case 4:
      return SquareBlock(BOARD_WIDTH);
    case 5:
      return TBlock(BOARD_WIDTH);
    case 6:
      return ZBlock(BOARD_WIDTH);
  }
}

Widget getTetrisPoint(Color color) {
  return Container(
    width: POINT_SIZE,
    height: POINT_SIZE,
    decoration: BoxDecoration(color: color, shape: BoxShape.rectangle),
  );
}

Widget getGameOverText(int score) {
  return Center(
    child: Text(
      "Tu perdeu seu merda\nScore Final: $score",
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        shadows: [
          Shadow(
            color: Colors.black,
            blurRadius: 3,
            offset: Offset(2, 2),
          )
        ],
      ),
    ),
  );
}
