import 'package:b_library/controller/library_screen_controller.dart';
import 'package:b_library/data/response/status.dart';
import 'package:b_library/resources/components/app_bar.dart';
import 'package:b_library/resources/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  LibraryScreenController libraryScreenController = LibraryScreenController();

  @override
  void initState() {
    // TODO: implement initState
    libraryScreenController.fetchBookListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ChangeNotifierProvider<LibraryScreenController>(
        create: (context) => libraryScreenController,
        child: Consumer<LibraryScreenController>(
          builder: (context, value, child) {
            switch (value.bookList.status) {
              case Status.LOADING:
                return const CircularProgressIndicator();
              case Status.ERROR:
                return Text(value.bookList.message.toString());
              case Status.COMPLETED:
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: value.bookList.data!.data!.docs!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Text(value.bookList.data!.data!.docs![index].name
                              .toString()),
                        ],
                      ),
                    );
                  },
                );
            }
            return Container();
          },
        ),
      )),
    );
  }
}
