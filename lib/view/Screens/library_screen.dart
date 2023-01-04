import 'package:b_library/controller/library_screen_controller.dart';
import 'package:b_library/data/response/status.dart';
import 'package:b_library/resources/components/app_bar.dart';
import 'package:b_library/resources/constants/color.dart';
import 'package:b_library/resources/constants/fonts.dart';
import 'package:b_library/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
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
                return const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.secondaryColor,
                  backgroundColor: AppColors.primaryColor,
                ));
              case Status.ERROR:
                return Text(value.bookList.message.toString());
              case Status.COMPLETED:
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //reusable app bar
                      const LibraryAppBar(),

                      //Heading Text
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
                      const SizedBox(
                        height: 16,
                      ),
                      //Fetching Api Data
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 265,
                            crossAxisCount: 3,
                            crossAxisSpacing: 25,
                          ),
                          itemCount: value.bookList.data!.data!.docs!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Utils.flushBarErrorMessages(
                                    value.bookList.data!.data!.docs![index]
                                        .publishedYear
                                        .toString(),
                                    context,
                                    value.bookList.data!.data!.docs![index].name
                                        .toString());
                              },
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 170,
                                      child: Image.network(
                                        value.bookList.data!.data!.docs![index]
                                            .coverImage
                                            .toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    RichText(
                                      overflow: TextOverflow.ellipsis,
                                      strutStyle:
                                          const StrutStyle(fontSize: 10.0),
                                      text: TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(
                                              fontSize: 14,
                                              fontFamily:
                                                  AppFonts.sfProDisplayMedium,
                                            ),
                                        text: value.bookList.data!.data!
                                            .docs![index].name
                                            .toString(),
                                      ),
                                    ),
                                    Flexible(
                                      child: ListView.builder(
                                          itemCount: value.bookList.data!.data!
                                              .docs![index].authors!.length,
                                          itemBuilder: (context, index) {
                                            return Text(
                                              value
                                                  .bookList
                                                  .data!
                                                  .data!
                                                  .docs![index]
                                                  .authors![index]
                                                  .name
                                                  .toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1!
                                                  .copyWith(
                                                    fontSize: 14,
                                                    fontFamily: AppFonts
                                                        .sfProDisplayLight,
                                                  ),
                                            );
                                          }),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 35),
                                      child: RatingStars(
                                        starSize: 13,
                                        value: value.bookList.data!.data!
                                            .docs![index].averageRating!
                                            .toDouble(),
                                        starColor: Colors.amber,
                                        valueLabelVisibility: false,
                                        valueLabelTextStyle: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 8.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
            }
            return Container();
          },
        ),
      )),
    );
  }
}
