import 'package:flutter/material.dart';

class LibraryAppBar extends StatelessWidget {
  const LibraryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.double_arrow_sharp,
            size: 30,
          ),
          Icon(
            Icons.notifications_outlined,
            size: 30,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
