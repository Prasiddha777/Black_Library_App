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

              //Text of Library Screen
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

              //
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 250,
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                    ),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                // width: 220,
                                // height: 400,
                                color: Colors.red.shade900,
                              ),
                            ),
                            Text('Radha'),
                            Text('Krishna Acharya'),
                            Text('data'),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
