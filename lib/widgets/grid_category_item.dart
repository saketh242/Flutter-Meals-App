import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class GridCategoryItem extends StatelessWidget {
  const GridCategoryItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final void Function() onSelectCategory;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).secondaryHeaderColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
    );
  }
}
