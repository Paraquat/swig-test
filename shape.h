#ifndef SHAPE_H
#define SHAPE_H
#include <iostream>

class Shape {

    public:
        virtual Shape* clone(void) const = 0;

        std::string getName(void);
        int getLabel(void);

    protected:
        int _number_of_vertices;
        int _label;
        std::string _name;
};
#endif
