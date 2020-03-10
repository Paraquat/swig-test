/* shapes.i */
%module shapes

%{
#include "shape.h"
#include "polygon.h"
#include "square.h"
#include "circle.h"
%}

%include "shape.h"
%include "polygon.h"
%include "square.h"
%include "circle.h"
