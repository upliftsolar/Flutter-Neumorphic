import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RRectPathProvider extends NeumorphicPathProvider {
  final BorderRadius borderRadius;

  const RRectPathProvider(this.borderRadius, {Listenable? reclip})
      : super(reclip: reclip);

  @override
  bool shouldReclip(NeumorphicPathProvider oldClipper) {
    return true;
  }

  @override
  Path getPath(Size size) {
    return Path()
      ..addRRect(RRect.fromLTRBAndCorners(0, 0, size.width, size.height,
          topLeft: borderRadius.topLeft,
          topRight: borderRadius.topRight,
          bottomLeft: borderRadius.bottomLeft,
          bottomRight: borderRadius.bottomRight))
      ..close();
  }

  @override
  bool get oneGradientPerPath => false; //because only 1 path
}
