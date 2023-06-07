import 'package:flutter/material.dart';
import 'package:learnascent_lms/models/lecmaterials.dart';

class LecItem extends StatelessWidget {
  const LecItem({
    super.key,
    required this.lecmaterial,
    required this.onSelectLecMaterial,
  });

  final LecMaterial lecmaterial;
  final void Function(LecMaterial lecmaterial) onSelectLecMaterial;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectLecMaterial(lecmaterial);
        },
        child: Stack(
          children: [
            // FadeInImage(
            //   placeholder: MemoryImage(kTransparentImage),
            //   image: NetworkImage(lecmaterial.imageUrl),
            //   fit: BoxFit.cover,
            //   height: 200,
            //   width: double.infinity,
            // ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(children: [
                  Text(
                    lecmaterial.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis, //Very long text ...
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
