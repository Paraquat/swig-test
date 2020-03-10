#include "circle.h"

Circle::Circle(const Circle& c)
{
    _radius = c._radius;
}

Circle::Circle(double radius)
{
    _radius = radius;
}

double Circle::getRadius(void)
{
    return _radius;
}

Circle* Circle::clone(void) const
{
    return new Circle(*this);
}
