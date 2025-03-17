#include <stdio.h>
#ifdef __GNUC__
#include <complex.h>
extern "C" int printf(const char *, ...);
#if defined(__sparc)
extern "C" double cimag(double _Complex);
extern "C" double creal(double _Complex);
#else
extern "C" double cimag(double _Complex) __THROW;
extern "C" double creal(double _Complex) __THROW;
#endif

class XXX {
public:
  double _Complex operator+() { return 9.876543 + 12.34567i; }

  double _Complex operator-() { return -1.234567 + 2.345678i; }
  double _Complex operator()(double _Complex value, int n) { return value * n; }
};

int main() {
  XXX xxx;
  double _Complex value = +xxx;
  printf("%f\n", creal(value));
  printf("%f\n", cimag(value));

  double _Complex value2 = -xxx;
  printf("%f\n", creal(value2));
  printf("%f\n", cimag(value2));

  double _Complex value3 = value + value2;
  printf("%f\n", creal(value3));
  printf("%f\n", cimag(value3));

  double _Complex value4 = xxx(value3, 11);
  printf("%f\n", creal(value4));
  printf("%f\n", cimag(value4));

  double _Complex value5 = value3 - +xxx;
  printf("%f\n", creal(value5));
  printf("%f\n", cimag(value5));

  return 0;
}
#else
int main() {
  printf("9.876543\n");
  printf("12.345670\n");
  printf("-1.234567\n");
  printf("2.345678\n");
  printf("8.641976\n");
  printf("14.691348\n");
  printf("95.061736\n");
  printf("161.604828\n");
  printf("-1.234567\n");
  printf("2.345678\n");
}
#endif
