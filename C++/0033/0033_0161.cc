#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int x = 0;

int f(char c) {
  x += c;
  return x;
}
int f(int i) {
  x += i;
  return x;
}
int f(unsigned u) {
  x += u;
  return x;
}
int f(long l) {
  x += (int)l;
  return x;
}
int f(float f) {
  x += (int)f;
  return x;
}
int f(double d) {
  x += (int)d;
  return x;
}
int f(long double ld) {
  x += (int)ld;
  return x;
}

int gc(int (*pf)(char)) { return pf('1'); }
int gi(int (*pf)(int)) { return pf(2); }
int gu(int (*pf)(unsigned)) { return pf(3u); }
int gl(int (*pf)(long)) { return pf(4L); }
int gf(int (*pf)(float)) { return pf(5.0f); }
int gd(int (*pf)(double)) { return pf(6.0); }
int gld(int (*pf)(long double)) { return pf(7.0l); }
int main() {
#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  if (gc(&f) == 49)
#pragma omp parallel
    if (gi(&f) == 51)
#pragma omp parallel
      if (gu(&f) == 54)
#pragma omp parallel
        if (gl(&f) == 58)
#pragma omp parallel
          if (gf(&f) == 63)
#pragma omp parallel
            if (gd(&f) == 69)
#pragma omp parallel
              if (gld(&f) == 76)
#pragma omp parallel
                printf("ok\n");
              else
#pragma omp parallel
                printf("ng long double\n");
            else
#pragma omp parallel
              printf("ng double\n");
          else
#pragma omp parallel
            printf("ng float\n");
        else
#pragma omp parallel
          printf("ng long\n");
      else
#pragma omp parallel
        printf("ng unsigned\n");
    else
#pragma omp parallel
      printf("ng int\n");
  else
#pragma omp parallel
    printf("ng char\n");
}
