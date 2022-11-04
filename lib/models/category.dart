import "package:flutter/material.dart";

class Category {
  final id;
  final title;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
