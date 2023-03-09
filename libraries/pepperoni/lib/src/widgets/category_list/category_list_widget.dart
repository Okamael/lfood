import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryListItem> items;

  const CategoryListWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        spacing: 5,
        runSpacing: 10,
        children: List.from(
          items.map(
            (item) => _CategoryItemWidget(
              item: item,
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  final CategoryListItem item;
  const _CategoryItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.2,
      child: Material(
        child: InkWell(
          onTap: () {
            item.onTap(item);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: ColoredBox(
                        color: Colors.white,
                        child: Image.network(
                          item.imagemUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(item.label),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imagemUrl;

  final void Function(CategoryListItem item) onTap;
  CategoryListItem(
    this.onTap, {
    required this.label,
    required this.imagemUrl,
  });
}
