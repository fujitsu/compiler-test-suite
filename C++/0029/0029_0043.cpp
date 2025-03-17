#include <iostream>
#include <cmath>

#define TEMPLATE(NAME, OP)	    \
template <class T>		    \
class NAME##1		            \
{				    \
public:				    \
  T operator OP (const T& rhs)	    \
  {				    \
    T tmp(static_cast<T&>(*this));  \
    tmp OP##= rhs;		    \
    return tmp;			    \
  }				    \
};

TEMPLATE(addable, +)
TEMPLATE(subtractable, -)
TEMPLATE(multipliable, *)
TEMPLATE(dividable, /)

class Operation : public addable1<Operation>, public subtractable1<Operation>,
                  public multipliable1<Operation>, public dividable1<Operation>
{
public:
  double x, y, z;

  Operation() {}

  explicit Operation(double _x, double _y, double _z)
    : x(_x), y(_y), z(_z) {}

  ~Operation() {}

  Operation& operator += (const Operation& rhs)
  {
    x += rhs.x;
    y += rhs.y;
    z += rhs.z;
    return *this;
  }

  Operation& operator -= (const Operation& rhs)
  {
    x -= rhs.x;
    y -= rhs.y;
    z -= rhs.z;
    return *this;
  }

  Operation& operator *= (const Operation& rhs)
  {
    x *= rhs.x;
    y *= rhs.y;
    z *= rhs.z;
    return *this;
  }

  Operation& operator /= (const Operation& rhs)
  {
    x /= rhs.x;
    y /= rhs.y;
    z /= rhs.z;
    return *this;
  }
};

void printOut(Operation& obj)
#ifdef __GNUC__
  __attribute__ ((noinline))
#endif
  ;

int main()
{
  Operation a(1.1031, 3.1391, -0.1831),
    b(-1.3001, 4.1512, -8.1098),
    c(8.1921, -0.9992, 2.2468);
  Operation d1 = a + b + c;
  Operation d2 = a - b - c;
  Operation d3 = a * b * c;
  Operation d4 = (a / b) / c;

  if (std::fabs(d1.x - 7.9951) > 0.005) {
    std::cout << "NG1" << std::endl;
  }
  else if (std::fabs(d1.y - 6.2911) > 0.005) {
    std::cout << "NG2" << std::endl;
  }
  else if (std::fabs(d1.z - (-6.0461)) > 0.005) {
    std::cout << "NG3" << std::endl;
  }
  else if (std::fabs(d2.x - (-5.7889)) > 0.005) {
    std::cout << "NG4" << std::endl;
  }
  else if (std::fabs(d2.y - (-0.0129)) > 0.005) {
    std::cout << "NG5" << std::endl;
  }
  else if (std::fabs(d2.z - 5.6799) > 0.005) {
    std::cout << "NG6" << std::endl;
  }
  else if (std::fabs(d3.x - (-11.7486)) > 0.005) {
    std::cout << "NG7" << std::endl;
  }
  else if (std::fabs(d3.y - (-13.0206)) > 0.005) {
    std::cout << "NG8" << std::endl;
  }
  else if (std::fabs(d3.z - 3.33628) > 0.0005) {
    std::cout << "NG9" << std::endl;
  }
  else if (std::fabs(d4.x - (-0.103572)) > 0.00005) {
    std::cout << "NG10" << std::endl;
  }
  else if (std::fabs(d4.y - (-0.756796)) > 0.00005) {
    std::cout << "NG11" << std::endl;
  }
  else if (std::fabs(d4.z - 0.0100488) > 0.000005) {
    std::cout << "NG12" << std::endl;
  }
  else {
    std::cout << "OK" << std::endl;
  }

  return 0;
}
