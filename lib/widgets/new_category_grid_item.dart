import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:meal_app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});
  // Aqui se declara que se aceptan los props, pero ya hay una variable que solicita esa data externa, por lo que ambas partes deben de estar

  // Debe aceptar data externa - los props los debe de aceptar aqui
  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              category.color.withAlpha(55),
              category.color.withAlpha(155),
              category.color.withAlpha(255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: GoogleFonts.wallpoet(
            textStyle: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
