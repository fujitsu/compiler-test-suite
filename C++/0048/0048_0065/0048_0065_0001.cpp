#include <iostream>
#include <complex>
#include "000.hpp"

union B
{
  int m1;
  std::complex<double> m2;
  std::string m3;

  B():
    m1(0) {}
  ~B() {}
};

void sub1()
{
  B b;

  b.m1 = 3;
  std::cout << b.m1 << std::endl;

  b.m2 = std::complex<double>(1., 2.);
  std::cout << b.m2 << std::endl;

  new(&b.m3) std::string("test");
  std::cout << b.m3 << std::endl;

  b.m3.~basic_string<char>();
}
