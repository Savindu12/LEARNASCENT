import 'package:flutter/material.dart';
import 'package:learnascent_lms/data/dummy-data.dart';
import 'package:learnascent_lms/screens/lecture_screen.dart';
import 'package:learnascent_lms/widgets/category_items.dart';
import 'package:learnascent_lms/screens/lec_materials.dart';
import 'package:learnascent_lms/models/categoryDetails.dart';
import 'package:flutter/services.dart';

import '../widgets/circle_button.dart';
import 'featuerd_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});


  void _selectCategory(BuildContext context, Category category) {
    final filteredLecMaterials = dummyLecMaterials
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>
            const lectureScreen(),
      ),
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
//       body: GridView(
//         padding: const EdgeInsets.all(24),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 1,
//           childAspectRatio: 2 / 1,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//         ),
//         children: [
//           // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
//           for (final category in availableCategories)
//             CategoryGridItem(
//               category: category,
//               onSelectCategory: () {
//                 _selectCategory(context, category);
//               },
//             )
//         ],
//       ),
//     );
//   }
// }

class Body extends StatelessWidget {
  const Body ({Key? key}): super (key: key);

  void _selectCategory(BuildContext context, Category category) {
    final filteredLecMaterials = dummyLecMaterials
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>
            const lectureScreen(),
      ),
    ); // Navigator.push(context, route)
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 500, // Set the desired height
      child: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(category: category)).toList()
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context, category);
              },
            )
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Color(0xFF0C195C),
            Color(0xFF0C119C),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Student \nLet's start learning",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
