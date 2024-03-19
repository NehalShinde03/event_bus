import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DemoState extends Equatable{

  final Color color;
  const DemoState({required this.color});

  @override
  List<Object?> get props => [color];

  DemoState copyWith({Color? color}){
    return DemoState(color: color ?? this.color);
  }

}