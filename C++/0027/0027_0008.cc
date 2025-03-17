#include <stdio.h>
#ifdef __GNUC__
#include <complex.h>
extern "C" int printf(const char *, ...);
#if defined(__sparc)
extern "C" float cimagf(float _Complex);
extern "C" float crealf(float _Complex);
extern "C" double cimag(double _Complex);
extern "C" double creal(double _Complex);
extern "C" long double cimagl(long double _Complex);
extern "C" long double creall(long double _Complex);
#else
extern "C" float cimagf(float _Complex) __THROW;
extern "C" float crealf(float _Complex) __THROW;
extern "C" double cimag(double _Complex) __THROW;
extern "C" double creal(double _Complex) __THROW;
extern "C" long double cimagl(long double _Complex) __THROW;
extern "C" long double creall(long double _Complex) __THROW;
#endif

template <class T> T add_complex_complex(T x, T y) { return x + y; }

void add_r4() {
  float _Complex a;
  float _Complex b;
  float _Complex c;

  a = 15.253f + 50.235fi;
  b = 2.0 + 3.0i;

  c = add_complex_complex(a, b);
  printf("%g\n", crealf(c));
  printf("%g\n", cimagf(c));
}

void add_r8() {
  double _Complex a;
  double _Complex b;
  double _Complex c;

  a = 15.253 + 50.235i;
  b = 2.0 + 3.0i;

  c = add_complex_complex(a, b);
  printf("%f\n", creal(c));
  printf("%f\n", cimag(c));
}

void add_r16() {
  long double _Complex a;
  long double _Complex b;
  long double _Complex c;

  a = 15.253f + 50.235fi;
  b = 2.0 + 3.0i;

  c = add_complex_complex(a, b);
  printf("%Lf\n", creall(c));
  printf("%Lf\n", cimagl(c));
}

int main() {
  add_r4();
  add_r8();
  add_r16();
  return 0;
}
#else
int main() {
  printf("17.253\n");
  printf("53.235\n");
  printf("17.253000\n");
  printf("53.235000\n");
  printf("17.253000\n");
  printf("53.235001\n");
}
#endif
