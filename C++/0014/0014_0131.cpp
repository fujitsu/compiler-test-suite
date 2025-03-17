#include <iostream>
#include <complex>
#include <cmath>

const double ANS_REAL = 1.0;
const double ANS_IMAG = 2.0;

bool equal_check(double val1, double val2) {
  if (std::fabs(val1 - val2) / std::fabs(val1) <= 1.0e-6F) {
    return true;
  }
  else {
    return false;
  }
}

void test(std::complex<double> x) {
  if (!equal_check(x.real(), ANS_REAL)
      || !equal_check(x.imag(), ANS_IMAG)) {
    std::cout << "NG" << std::endl;
  }
  std::cout << "OK" << std::endl;
}

int main()
{
  std::complex<double> x(0.0, 0.0);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(x) depend(in: x)
    x.real(1.0);
    x.imag(2.0);  
#pragma omp task shared(x) depend(out: x)
    test(x);
  }
  return 0;
}
