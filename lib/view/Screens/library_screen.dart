import 'package:b_library/resources/components/app_bar.dart';
import 'package:b_library/resources/constants/fonts.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //resuable components
              LibraryAppBar(),

              //
              Text(
                'Library',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 35,
                      fontFamily: AppFonts.sfProDisplayLight,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'You can rent book if you have the library membership.',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      fontFamily: AppFonts.sfProDisplayLight,
                      fontWeight: FontWeight.w200,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
