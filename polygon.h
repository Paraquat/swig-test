#include "shape.h"

class Polygon : public Shape {

    public:
        Polygon() {};
        ~Polygon() {};

        int getNumberOfSides(void) const;
        int getNumberOfVertices(void) const;
        virtual Polygon* clone(void) const;

    private:
        int _number_of_sides;

};
