import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  final ThemeData theme;
  final MaterialColor color;

  const ThemeState({required this.theme, required this.color});

  @override
  List<Object> get props => [theme, color];
}
