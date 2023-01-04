import 'package:b_library/resources/components/app_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: const [
            LibraryAppBar(),
          ],
        ),
      )),
    );
  }
}
