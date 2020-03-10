#include "polygon.h"

int Polygon::getNumberOfSides(void) const
{
    return _number_of_sides;
}

int Polygon::getNumberOfVertices(void) const
{
    return _number_of_vertices;
}

Polygon* Polygon::clone(void) const
{
    return new Polygon(*this);
}
