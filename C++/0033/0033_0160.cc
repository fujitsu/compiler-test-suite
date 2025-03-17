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
int main() {
  int (*pfc)(char);
  int (*pfi)(int);
  int (*pfu)(unsigned);
  int (*pfl)(long);
  int (*pff)(float);
  int (*pfd)(double);
  int (*pfld)(long double);

#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  pfc = &f;
#pragma omp parallel
  pfi = &f;
#pragma omp parallel
  pfu = &f;
#pragma omp parallel
  pfl = &f;
#pragma omp parallel
  pff = &f;
#pragma omp parallel
  pfd = &f;
#pragma omp parallel
  pfld = &f;

#pragma omp parallel
  if (pfc('1') == 49)
#pragma omp parallel
    if (pfi(2) == 51)
#pragma omp parallel
      if (pfu(3u) == 54)
#pragma omp parallel
        if (pfl(4L) == 58)
#pragma omp parallel
          if (pff(5.0f) == 63)
#pragma omp parallel
            if (pfd(6.0) == 69)
#pragma omp parallel
              if (pfld(7.0l) == 76)
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
