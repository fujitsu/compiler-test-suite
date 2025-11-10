#ifndef _MATH1_HPP
#define _MATH1_HPP

#include <cmath>

class Abs
{
public:
  double operator () (double v) const
  {
    return std::abs(v);
  }
};

class Sin
{
public:
  double operator () (double a) const
  {
    return std::sin(a);
  }
};

#endif
