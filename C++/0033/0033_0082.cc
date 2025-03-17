#include <stdio.h>
int i10 = 10;
int i20 = 20;
int main() {
  int i = i10;
  const int ic = i20;
  const int &ric = i;
  int &ri = i;
  void *vp;

#pragma omp parallel
  ri = (int &)ric;
#pragma omp parallel
  ri = i10 + 5;
#pragma omp parallel
  if (ri == 15 && i == 15 && (const int *)&ri == (const int *)&ric)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d %d\n", ri, i);

#pragma omp parallel
  ri = (int &)ic;
#pragma omp parallel
  vp = (void *)&(int &)ic;
#pragma omp parallel
  ri = i20 + 5;

#pragma omp parallel
  if (ri == 25 && ic == 20 && &ic == (const int *)vp)
#pragma omp parallel
    ;
  else {
#pragma omp parallel
    printf("ng %d %d\n", ri, ic);
#pragma omp parallel
    printf("ri=%x &ic=%x \n", &ic, (const int *)vp);
  }

  printf("ok\n");
}
