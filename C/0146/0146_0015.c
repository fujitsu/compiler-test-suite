
#include <stdio.h>
struct t1 {
  int vv[2];
};
int main() {
  int vv[2];
  struct t1 t,tt[2];
  vv[1] = 1;
  t.vv[1] = 2;
  tt[0].vv[1] = 3;
  tt[1].vv[1] = 4;

#pragma omp atomic read
  vv[0] = vv[1];
  if (vv[0] != vv[1]) printf("101\n");
#pragma omp atomic read
  vv[1] = vv[1];
  if (vv[1] != vv[1]) printf("102\n");

#pragma omp atomic read
  t.vv[0] = t.vv[1];
  if (t.vv[0] != t.vv[1]) printf("103\n");
#pragma omp atomic read
  t.vv[1] = t.vv[1];
  if (t.vv[1] != t.vv[1]) printf("104\n");

#pragma omp atomic read
  tt[0].vv[1] = tt[1].vv[1];
  if (tt[0].vv[1] != tt[1].vv[1]) printf("105\n");
#pragma omp atomic read
  tt[0].vv[0] = tt[0].vv[1];
  if (tt[0].vv[0] != tt[0].vv[1]) printf("106\n");
#pragma omp atomic read
  tt[1].vv[1] = tt[1].vv[1];
  if (tt[1].vv[1] != tt[1].vv[1]) printf("107\n");

  printf("pass\n");
  return 0;
}
