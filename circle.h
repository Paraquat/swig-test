#include "shape.h"

class Circle : public Shape {

    public:
        Circle() {};
        ~Circle() {};
        Circle(double radius);
        Circle (Circle&&) = default;
        Circle(const Circle& c);
        
        double getRadius(void);
        virtual Circle* clone(void) const;

    private:
        double _radius;
};
