import 'package:hive_flutter/hive_flutter.dart';

part 'buchungen.g.dart';

@HiveType(typeId: 1)
class Buchungen extends HiveObject {
  @HiveField(0)
  final int BU_ID;

  @HiveField(1)
  final int BU_DN_ID;

  @HiveField(2)
  final DateTime BU_TIMESTAMP;

  @HiveField(3)
  final int BU_ABW_NR;

  Buchungen({required this.BU_ID, required this.BU_DN_ID, required this.BU_TIMESTAMP, required this.BU_ABW_NR});
}



