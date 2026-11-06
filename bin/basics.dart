import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  // No-argument constructor
  GeometricObject()
      : color = 'white',
        filled = false;

  // Argument constructor
  GeometricObject.withValues(this.color, this.filled);

  @override
  String toString() {
    return 'GeometricObject: color = $color, filled = $filled';
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  // No-argument constructor
  Triangle()
      : side1 = 1.0,
        side2 = 1.0,
        side3 = 1.0,
        super();

  // Argument constructor
  Triangle.withValues(
      this.side1,
      this.side2,
      this.side3,
      String color,
      bool filled,
      ) : super.withValues(color, filled);

  // Area of triangle
  double getArea() {
    double s = getPerimeter() / 2;

    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  // Perimeter of triangle
  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return 'Triangle: side1 = $side1, side2 = $side2, side3 = $side3';
  }
}

class Rectangle extends GeometricObject {
  double height;
  double width;

  // No-argument constructor
  Rectangle()
      : height = 1.0,
        width = 1.0,
        super();

  // Argument constructor
  Rectangle.withValues(
      this.width,
      this.height,
      String color,
      bool filled,
      ) : super.withValues(color, filled);

  // Area of rectangle
  double getArea() {
    return width * height;
  }

  // Perimeter of rectangle
  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return 'Rectangle: height = $height, width = $width';
  }
}

void main() {
  // Triangle object
  Triangle triangle = Triangle.withValues(
    3.0,
    4.0,
    5.0,
    'red',
    true,
  );

  print(triangle);
  print('Triangle Area = ${triangle.getArea()}');
  print('Triangle Perimeter = ${triangle.getPerimeter()}');
  print('Color = ${triangle.color}');
  print('Filled = ${triangle.filled}');

  print('');

  // Rectangle object
  Rectangle rectangle = Rectangle.withValues(
    5.0,
    10.0,
    'blue',
    true,
  );

  print(rectangle);
  print('Rectangle Area = ${rectangle.getArea()}');
  print('Rectangle Perimeter = ${rectangle.getPerimeter()}');
  print('Color = ${rectangle.color}');
  print('Filled = ${rectangle.filled}');
}