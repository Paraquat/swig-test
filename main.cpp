#include "square.h"
#include "circle.h"

int main(void) {

    Square* s1;
    Circle* c1;

    s1 = new Square(3.0);
    c1 = new Circle(4.0);
    Circle* c2 = c1->clone();

    std::cout << "Square s1 has side " << s1->getSide() << std::endl;
    std::cout << "Circle c1 has radius " << c1->getRadius() << std::endl;
    std::cout << "Circle c2 has radius " << c2->getRadius() << std::endl;

    return 0;
}
