import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

enum LoaderSize { small, medium, large }

class Loader extends StatelessWidget {
  final LoaderSize size;
  const Loader({super.key, this.size = LoaderSize.medium});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.dotsTriangle(
      color: Theme.of(context).colorScheme.primary,
      size: size == LoaderSize.large
          ? 155
          : size == LoaderSize.medium
              ? 100
              : 75,
    );
  }
}
