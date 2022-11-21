import 'package:flutter/material.dart';
import 'package:trogen_media/const/constant.dart';
import '../model/categories_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final Categories categories;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.deepOrange,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: FadeInImage(
              fit: BoxFit.cover,
              width: size.width*.5,
              placeholder: const AssetImage('asset/image/A_black_image.jpg',),
              image: NetworkImage(categories.thumbnail),
            ),
          ),
          Expanded(
          
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: kwhite),
                  
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${categories.numberOfCourses.toString()} Courses",
                    style: const TextStyle(color: kwhite,),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
