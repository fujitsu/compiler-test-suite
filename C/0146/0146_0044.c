
#include <stdio.h>
#include <omp.h>
int chk, tnum;
void sub01() {
  int a, x;
  a = 1;
  x = 1;
#pragma omp task if(a) shared(x)
  {
    x = 2;
  }
  if (x == 1) {
#pragma omp atomic
    chk++; 
  }
#pragma omp taskwait
}

void sub02() {
  int x;
  x = 1;
#pragma omp task if(1) shared(x)
  {
    x = 2;
  }
  if (x == 1) {
#pragma omp atomic
    chk++; 
  }
#pragma omp taskwait
}

void sub03() {
  int a, x;
  a = 1;
  x = 1;
#pragma omp task if(a==1) shared(x)
  {
    x = 2;
  }
  if (x == 1) {
#pragma omp atomic
    chk++; 
  }
#pragma omp taskwait
}

int main() {
  chk = 0;
#pragma omp parallel
  {
    sub01();
    sub02();
    sub03();
#pragma omp master
    {
      tnum = omp_get_num_threads();
    }
  }
  if (chk == 0 && tnum >= 2) {

    printf("ng %d\n", chk);
  }
  printf("pass\n");
  return 0;
}
