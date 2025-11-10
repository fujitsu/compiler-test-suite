#include <cstdio>
#include "000.hpp"

extern template void swap<char>(char&, char&);
extern template void swap<short>(short&, short&);
extern template void swap<int>(int&, int&);
extern template void swap<long>(long&, long&);

extern template void swap<float>(float&, float&);
extern template void swap<double>(double&, double&);

int main()
{
  char c1 = 'a', c2 = 'A';
  short s1 = 1, s2 = 2;
  int i1 = 3, i2 = 4;
  long l1 = 5, l2 = 6;
  
  float f1 = 7., f2 = 8;
  double d1 = 9., d2 = 10.;

  swap(c1, c2);
  swap(s1, s2);
  swap(i1, i2);
  swap(l1, l2);

  swap(f1, f2);
  swap(d1, d2);

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
