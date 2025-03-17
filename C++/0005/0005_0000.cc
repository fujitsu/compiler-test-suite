#include <stdio.h>
#include <complex>


int main() {
  std::complex<double> a, b, c;
  a = std::complex<double>(2.0, 3.0);  
  b = std::complex<double>(4.0, 5.0);  
  c = a + b;
  if (c.real()== 6.0 && c.imag() == 8.0 ) {
    printf("OK\n");
  }
  else {
    printf("NG real=%lf, imag=%lf\n", c.real(), c.imag());
  }
  return 0;
}
