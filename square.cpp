#include "square.h"

Square::Square(double side)
{
    _side = side;
}

double Square::getSide(void)
{
    return _side;
}

Square* Square::clone(void) const
{
    return new Square(*this);
}
