#include "polygon.h"

class Square : public Polygon {
    public:
        Square() {};
        ~Square() {};
        Square(double side);

        double getSide(void);
        virtual Square* clone(void) const;

    private:
        double _side;

};
