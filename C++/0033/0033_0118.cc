#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class A {
  char c;
};
int main() {
  char *n1 = new char;
  char **n2 = new char *;
  char **n3 = new char *;
  char A::**n4 = new char A ::*;
  char A::**n5 = new char A ::*;
  char *n6 = new char[100];
  char *n7 = new (char);
  char *n8 = ::new char;

#ifdef _OPENMP
  omp_set_num_threads(1);
#endif
#pragma omp parallel
  delete n1;
#pragma omp parallel
  delete n2;
#pragma omp parallel
  delete n3;
#pragma omp parallel
  delete n4;
#pragma omp parallel
  delete n5;
#pragma omp parallel
  delete[] n6;
#pragma omp parallel
  delete n7;
#pragma omp parallel
  delete n8;

#pragma omp parallel
  printf("ok\n");
}
