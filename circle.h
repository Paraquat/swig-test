#include "shape.h"

class Circle : public Shape {

    public:
        Circle() {};
        ~Circle() {};
        Circle(double radius);
        
        double getRadius(void);
        virtual Circle* clone(void) const;

    private:
        double _radius;
};
