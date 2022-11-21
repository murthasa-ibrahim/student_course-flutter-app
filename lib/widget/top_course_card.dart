import 'package:flutter/material.dart';
import 'package:trogen_media/model/top_courses_model.dart';
import 'package:trogen_media/view/top_course_details/course_details.dart';

import '../const/constant.dart';

class TopCoursCard extends StatelessWidget {
  const TopCoursCard({
    Key? key,
    required this.size,
    required this.topCourses,
  }) : super(key: key);

  final Size size;
  final TopCourses topCourses;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => CourseDetailsView(topCourses: topCourses),)),
      child: SizedBox(
        width: size.width * .5,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Expanded(
                child: FadeInImage(
                   width: size.width * .5,
                   fit: BoxFit.cover,
                placeholder: const AssetImage('asset/image/A_black_image.jpg'),
                image: NetworkImage(topCourses.thumbnail,
                ),
                        ),
              ),
            
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        topCourses.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: kblack.withOpacity(.7)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Text(
                            topCourses.price,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
