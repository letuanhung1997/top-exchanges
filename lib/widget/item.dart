import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Widget child;
  String title;
  String description;

  Item({Key? key, required this.child, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:50,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF734295),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: child,
            ),
          ),
          SizedBox(width: 12),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),),
                Text(description,style: TextStyle(
                  color: Color(0xFFC8CDCD),
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
