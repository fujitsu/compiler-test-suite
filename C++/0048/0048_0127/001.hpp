#ifndef _MATH1_HPP
#define _MATH1_HPP

#include <cmath>
#include <cstdlib>

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
