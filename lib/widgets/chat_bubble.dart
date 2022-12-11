import 'package:flutter/material.dart';
import 'package:saveshamo/theme.dart';

class ChatBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: backgroundColor5,
            ),
            child: Text('Hi, This item is stil available?'),
          ),
        ],
      ),
    );
  }
}
