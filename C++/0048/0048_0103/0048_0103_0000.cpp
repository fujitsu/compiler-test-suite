#include <cstdio>
#include "000.hpp"

namespace myspace = A::B;

extern template void myspace::swap<char>(char&, char&);
extern template void myspace::swap<short>(short&, short&);
extern template void myspace::swap<int>(int&, int&);
extern template void myspace::swap<long>(long&, long&);

extern template void myspace::swap<float>(float&, float&);
extern template void myspace::swap<double>(double&, double&);

int main()
{
  char c1 = 'a', c2 = 'A';
  short s1 = 1, s2 = 2;
  int i1 = 3, i2 = 4;
  long l1 = 5, l2 = 6;
  
  float f1 = 7., f2 = 8;
  double d1 = 9., d2 = 10.;

  myspace::swap(c1, c2);
  myspace::swap(s1, s2);
  myspace::swap(i1, i2);
  myspace::swap(l1, l2);

  myspace::swap(f1, f2);
  myspace::swap(d1, d2);

  if (c1 == 'A' && c2 == 'a' &&
      s1 ==  2  && s2 ==  1  &&
      i1 ==  4  && i2 ==  3  &&
      l1 ==  6  && l2 ==  5  &&
      f1 ==  8. && f2 ==  7. &&
      d1 == 10. && d2 ==  9.) {
    std::puts("OK");
  }

  return 0;
}
