import 'package:flutter/foundation.dart';

@immutable
sealed class BLEState {}

final class BLESuccess extends BLEState{}

final class BLELoading extends BLEState{}

final class BLEError extends BLEState{}