#include <stdio.h>
int i10 = 10;
int i20 = 20;
int main() {
  int i = i10;
  volatile int iv = i20;
  volatile int &riv = i;
  int &ri = i;
  void *vp;

#pragma omp parallel
  ri = (int &)riv;
#pragma omp parallel
  ri = i10 + 5;
#pragma omp parallel
  if (ri == 15 && i == 15 && (volatile int *)&ri == (volatile int *)&riv)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d %d\n", ri, i);

#pragma omp parallel
  ri = (int &)iv;
#pragma omp parallel
  vp = (void *)&(int &)iv;
#pragma omp parallel
  ri = i20 + 5;

#pragma omp parallel
  if (ri == 25 && iv == 20 && &iv == (volatile int *)vp)
#pragma omp parallel
    ;
  else {
#pragma omp parallel
    printf("ng %d %d\n", ri, iv);
#pragma omp parallel
    printf("ri=%x &iv=%x \n", &iv, (volatile int *)vp);
  }

  printf("ok\n");
}
