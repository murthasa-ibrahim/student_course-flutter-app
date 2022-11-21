
import 'package:flutter/material.dart';
import 'package:trogen_media/model/top_courses_model.dart';
import 'package:trogen_media/view_model/cousrse_details_provider.dart';

import '../const/constant.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.provider,
    required this.size,
    required this.topCourses,
  }) : super(key: key);

  final CourseDetailsProvider provider;
  final Size size;
  final TopCourses topCourses;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: provider.categoryList.length,
      child: Column(
        children: [
          ColoredBox(
            color: kblack.withOpacity(.1),
            child: TabBar(
                indicator: const BoxDecoration(color: Colors.red),
                unselectedLabelColor: Colors.blue,
                labelColor: kwhite,
                indicatorColor: Colors.transparent,
                tabs: provider.categoryList
                    .map((e) => Tab(
                          text: e,
                        ))
                    .toList()),
          ),
          kheight,
          SizedBox(
            width: double.infinity,
            height: size.height * .35,
            child: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  elevation: 4,
                  child: Container(
                    // color: Colors.black,
                    margin: const EdgeInsets.all(16),
                    width: double.infinity,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'What is included',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.card_giftcard_sharp,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        kheight,
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('10 hours on demand vedios'),
                              const Divider(
                                thickness: 2,
                              ),
                              Text(topCourses.level),
                              const Divider(
                                thickness: 2,
                              ),
                              const Text('High quality vedios'),
                              const Divider(
                                thickness: 2,
                              ),
                              const Text('Life time access'),
                              const Divider(
                                thickness: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Text('Outcomes'),
              const Text('Requirements')
            ]),
          )
        ],
      ),
    );
  }
}
