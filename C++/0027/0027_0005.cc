#include <complex>
#include <iostream>

const int N = 5;
int main(void) {
  std::complex<float> flt[N];
  std::complex<double> dbl[N];
  std::complex<long double> ldbl[N];
  int i;

  for (i = 0; i < N; i++) {
    flt[i] = std::complex<double>((double)(N + 1) / (double)(i + 1), (double)i);
  }

  for (i = 0; i < N; i++) {
    dbl[i] = flt[i];
  }
  for (i = 0; i < N; i++) {
    flt[i] = dbl[i];
  }

  for (i = 0; i < N; i++) {
    ldbl[i] = flt[i];
  }
  for (i = 0; i < N; i++) {
    flt[i] = ldbl[i];
  }

  for (i = 0; i < N; i++) {
    ldbl[i] = dbl[i];
  }
  for (i = 0; i < N; i++) {
    dbl[i] = ldbl[i];
  }

  std::cout << "flt : ";
  for (i = 0; i < N; i++) {
    std::cout << flt[i] << "  ";
  }
  std::cout << std::endl;

  std::cout << "dbl : ";
  for (i = 0; i < N; i++) {
    std::cout << dbl[i] << "  ";
  }
  std::cout << std::endl;

  std::cout << "ldbl : ";
  for (i = 0; i < N; i++) {
    std::cout << ldbl[i] << "  ";
  }
  std::cout << std::endl;

  return 0;
}
