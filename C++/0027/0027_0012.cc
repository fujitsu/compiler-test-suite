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

class XXX {
public:
  XXX() {}
  ~XXX() {}

  void checkans(float _Complex x) {
    int i1 = int(crealf(x) * 10000);
    int i2 = int(cimagf(x) * 10000);
    printf("%d\n", i1);
    printf("%d\n", i2);
  }
  void checkans(double _Complex x) {
    int i1 = int(creal(x) * 10000);
    int i2 = int(cimag(x) * 10000);
    printf("%d\n", i1);
    printf("%d\n", i2);
  }
  void checkans(long double _Complex x) {
    int i1 = int(creall(x) * 10000);
    int i2 = int(cimagl(x) * 10000);
    printf("%d\n", i1);
    printf("%d\n", i2);
  }
};

template <class T> void foo(T x, T y, T z) {
  class XXX check;
  x = x + y * z;
  x = x - y / z;
  check.checkans(x);
}

int main() {
  foo((float _Complex)(1.1F + 1.2i), (float _Complex)(1.3F + 1.4i),
      (float _Complex)(1.5F + 1.6i));
  foo((1.1 + 1.2i), (1.3 + 1.4i), (1.5 + 1.6i));
  foo((1.1L + 1.2Li), (1.3L + 1.4Li), (1.5L + 1.6Li));
}

#else
#include <stdio.h>

int main() {
  printf("-611\n");
  printf("53758\n");
  printf("-611\n");
  printf("53758\n");
  printf("-611\n");
  printf("53758\n");
}
#endif
