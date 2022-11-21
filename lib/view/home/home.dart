import 'package:flutter/material.dart';
import 'package:trogen_media/const/constant.dart';
import 'package:trogen_media/model/categories_model.dart';
import 'package:trogen_media/model/top_courses_model.dart';
import 'package:trogen_media/services/categories.dart';
import 'package:trogen_media/services/top_courses.dart';

import '../../widget/category_card.dart';
import '../../widget/top_course_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
        elevation: 1,
        title: const Text('home'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Top Course',
                style: Theme.of(context).textTheme.headline6!.copyWith()),
            trailing: Text('All Courses >',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.blue)),
          ),
          SizedBox(
            width: double.infinity,
            height: size.height * .25,
            child: FutureBuilder<List<TopCourses>>(
              future: GetTopCourses().getTopCoursesApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    // padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => TopCoursCard(
                      size: size,
                      topCourses: snapshot.data![index],
                    ),
                    itemCount: snapshot.data!.length,
                  );
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      snapshot.error.toString(),
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('Categories',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          FutureBuilder<List<Categories>>(
            future: GetCategories().getCategories(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => CategoryCard(
                    categories: snapshot.data![index],
                  ),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 14, 47, 74),
        onPressed: () {},
        child: const Icon(Icons.line_axis_sharp),
      ),
    );
  }
}
