import 'package:flutter/material.dart';
import 'package:learnascent_lms/widgets/lecture_material.dart';
import 'package:learnascent_lms/screens/lec_details.dart';
import 'package:learnascent_lms/widgets/lec_items.dart';
import '../models/lecmaterials.dart';

class LecMaterialsScreen extends StatelessWidget {
  const LecMaterialsScreen({
    super.key,
    required this.title,
    required this.lecmaterials,
  });

  final String title;
  final List<LecMaterial> lecmaterials;

  void selectLecMaterial(BuildContext context, LecMaterial lecmaterial) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => LecDetailsScreen(
          lecmaterial: lecmaterial,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Not available!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Check other modules!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );

    if (lecmaterials.isNotEmpty) {
      content = ListView.builder(
        itemCount: lecmaterials.length,
        itemBuilder: (ctx, index) => LecItem(
          lecmaterial: lecmaterials[index],
          onSelectLecMaterial: (lecmaterial) {
            selectLecMaterial(context, lecmaterial);
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 219, 255),
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
