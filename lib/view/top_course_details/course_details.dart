import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trogen_media/const/constant.dart';
import 'package:trogen_media/model/top_courses_model.dart';
import 'package:trogen_media/view_model/cousrse_details_provider.dart';

import '../../widget/tabbar_widget.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({Key? key, required this.topCourses})
      : super(key: key);
  final TopCourses topCourses;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = context.read<CourseDetailsProvider>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .3,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.3),
                                BlendMode.dstATop),
                            image: NetworkImage(
                              topCourses.thumbnail,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  ListTile(
                    leading: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: kwhite,
                        )),
                    title: Text(
                      topCourses.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: kwhite),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          topCourses.totalEnrollment.toString(),
                          style: const TextStyle(fontSize: 20, color: kwhite),
                        ),
                        Text(
                          "${topCourses.rating}.0 ( ${topCourses.numberOfRatings} )",
                          style: const TextStyle(fontSize: 20, color: kwhite),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    left: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: kwhite,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12)),
                      onPressed: () {
                        showModalBottomSheet(
                          
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          context: context,
                          builder: (context) => Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(context: context, builder: (contex){
                                  Future.delayed(Duration(seconds: 2,),()=>Navigator.of(context).pop());
                                  return const AlertDialog(
                                          title:  Text('Thank you'),
                                          content: Text('Thanks for enrolling to the course'),
                                ) ;
                                } );
                              },
                              child: Text(
                                'Click here',
                                style: Theme.of(context).textTheme.headline5!.copyWith(color: kwhite),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Image.asset(
                        'asset/image/kisspng-computer-icons-symbol-download-play-button-5ac1d9f2cb8899.5836832715226536828337.png',
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Spacer(),
                            Text(
                              topCourses.price,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            const Icon(
                              Icons.share,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                Icons.favorite_outline,
                                color: Colors.cyan,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  primary:
                                      const Color.fromARGB(255, 10, 49, 80)),
                              onPressed: () {},
                              child: const Text(
                                'Enrol',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  TabBarWidget(
                      provider: provider, size: size, topCourses: topCourses),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
