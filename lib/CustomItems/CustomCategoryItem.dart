import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key, required this.iconUrl});
  final String iconUrl;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: isSelected
                  ? const Text("Category Selected")
                  : const Text("Category Deselected"),
              duration: const Duration(milliseconds: 400),
            ),
          );
        },
        child: Container(
          width: 50, // Dairenin genişliği
          height: 50, // Dairenin yüksekliği
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected
                ? Colors.lightBlue
                : Colors.deepOrange.withOpacity(
                    0.4), // Arkaplanın opaklığı (0.0 - 1.0 aralığında)
          ),
          padding: const EdgeInsets.all(10), // Resmin çerçeveden uzaklığı
          child: Image.network(
            widget.iconUrl,
            width: 40, // Resmin genişliği
            height: 40, // Resmin yüksekliği
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
