import 'package:flutter/material.dart';

import 'package:learnascent_lms/models/lecmaterials.dart';

class LecDetailsScreen extends StatelessWidget {
  const LecDetailsScreen({
    super.key,
    required this.lecmaterial,
  });

  final LecMaterial lecmaterial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 219, 255),
      appBar: AppBar(
        title: Text(
          lecmaterial.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 25),
              for (final ingredient in lecmaterial.lectures)
                Text(
                  ingredient,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
