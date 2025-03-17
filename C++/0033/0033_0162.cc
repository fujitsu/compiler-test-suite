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

int (*gc())(char) { return &f; }
int (*gi())(int) { return &f; }
int (*gu())(unsigned) { return &f; }
int (*gl())(long) { return &f; }
int (*gf())(float) { return &f; }
int (*gd())(double) { return &f; }
int (*gld())(long double) { return &f; }
int main() {
#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  if ((gc())('1') == 49)
#pragma omp parallel
    if ((gi())(2) == 51)
#pragma omp parallel
      if ((gu())(3u) == 54)
#pragma omp parallel
        if ((gl())(4L) == 58)
#pragma omp parallel
          if ((gf())(5.0f) == 63)
#pragma omp parallel
            if ((gd())(6.0) == 69)
#pragma omp parallel
              if ((gld())(7.0l) == 76)
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
