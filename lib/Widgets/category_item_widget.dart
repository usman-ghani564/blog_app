import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color color;
  final String imageUrl;
  CategoryItem({this.color, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          child: Container(
            width: 70,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(
              imageUrl,
              scale: 5,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
