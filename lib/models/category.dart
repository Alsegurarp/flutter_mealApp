import 'package:flutter/material.dart';

class Category {
  // declaration of what a category must have
  const Category({
    required this.id,
    required this.title,
    this.color = Colors.deepOrange,
  }); // En el builder seteamos valores necesarios y un valor por defecto en caso que no se pase uno.

  final String id;
  final String title;
  final Color color;
}
