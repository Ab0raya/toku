import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(this.categoryName,this.image,this.tapped);
  String? categoryName ;
  String? image ;
  Function() tapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 180,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Image.asset(image!),
              Text(
                categoryName!,
                style: const TextStyle(
                  fontFamily: 'Caveat',
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
