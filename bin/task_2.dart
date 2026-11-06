abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString();
}

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(String color, this.length, this.width)
      : super(color);

  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() {
    return 'Rectangle: color=$color, area=${getArea()}';
  }
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(String color, this.base, this.height)
      : super(color);

  @override
  double getArea() {
    return base * height / 2;
  }

  @override
  String toString() {
    return 'Triangle: color=$color, area=${getArea()}';
  }
}

void main() {
  Rectangle r = Rectangle('Red', 5, 4);
  Triangle t = Triangle('Blue', 6, 3);

  print(r.getArea());
  print(r.toString());

  print(t.getArea());
  print(t.toString());
}