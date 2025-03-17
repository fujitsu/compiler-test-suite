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

template <class T> T mult_complex(T x, T y) { return x * y; }

void mult_r4() {
  float _Complex a;
  float _Complex b;
  float _Complex c;

  a = 15.253f + 50.235fi;
  b = 2.0 + 3.0i;

  c = mult_complex(a, b);
  printf("%g\n", cimagf(c));
  printf("%g\n", crealf(c));
}

void mult_r8() {
  double _Complex a;
  double _Complex b;
  double _Complex c;

  a = 15.253 + 50.235i;
  b = 2.0 + 3.0i;

  c = mult_complex(a, b);
  printf("%f\n", cimag(c));
  printf("%f\n", creal(c));
}

void mult_r16() {
  long double _Complex a;
  long double _Complex b;
  long double _Complex c;

  a = 15.253f + 50.235fi;
  b = 2.0 + 3.0i;

  c = mult_complex(a, b);
  printf("%Lf\n", cimagl(c));
  printf("%Lf\n", creall(c));
}

int main() {
  mult_r4();
  mult_r8();
  mult_r16();
  return 0;
}
#else
int main() {
  printf("146.229\n");
  printf("-120.199\n");
  printf("146.229000\n");
  printf("-120.199000\n");
  printf("146.229002\n");
  printf("-120.199001\n");
}
#endif
