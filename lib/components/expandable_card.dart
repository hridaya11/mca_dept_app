// components/expandable_card.dart
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ExpandableCard extends StatefulWidget {
  final String title;
  final String content;
  final IconData icon;

  const ExpandableCard({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
  });

  @override
  State<ExpandableCard> createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: CircleAvatar(
              backgroundColor: AppColors.secondaryBlue.withOpacity(0.2),
              child: Icon(widget.icon, color: AppColors.secondaryBlue),
            ),
            title: Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                _expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                color: AppColors.secondaryBlue,
              ),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
          if (_expanded)
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              color: AppColors.secondaryBlue.withOpacity(0.05),
              child: Text(
                widget.content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
        ],
      ),
    );
  }
}