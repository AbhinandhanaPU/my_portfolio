import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/image_container.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key}) : super(key: key);

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
            offset: Offset(0, 10 * value), // Move the container up and down
            child: ImageContainer());
      },
    );
  }
}
