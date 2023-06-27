import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String child;

  const Item({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: 90,
      width: 90,
      decoration: const BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(4),
        ),
      ),
      child: Center(
        child: Text(
          child,
          style: const TextStyle(
            fontSize: 14.0,
            color: Color(0xFF4B64F2),
          ),
        ),
      ),
    );
  }
}

class ItemList extends StatefulWidget {
  final List items;
  const ItemList({super.key, required this.items});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return Item(child: widget.items[index]);
        },
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}