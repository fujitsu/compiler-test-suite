
#include <stdio.h>
struct t1 {
  int v, x, vv[2], xx[2];
};
int main() {
  int v, x, vv[2], xx[2];
  struct t1 t,tt[2];
  x = 1;
  xx[1] = 2;
  t.x = 3;
  t.xx[1] = 4;
  tt[1].x = 5;
  tt[1].xx[1] = 6;

#pragma omp atomic read
  v = x;
  if (v != x) printf("101\n");
#pragma omp atomic read
  v = xx[1];
  if (v != xx[1]) printf("102\n");
#pragma omp atomic read
  v = t.x;
  if (v != t.x) printf("103\n");
#pragma omp atomic read
  v = t.xx[1];
  if (v != t.xx[1]) printf("104\n");
#pragma omp atomic read
  v = tt[1].x;
  if (v != tt[1].x) printf("105\n");
#pragma omp atomic read
  v = tt[1].xx[1];
  if (v != tt[1].xx[1]) printf("106\n");

#pragma omp atomic read
  vv[1] = x;
  if (vv[1] != x) printf("107\n");
#pragma omp atomic read
  vv[1] = xx[1];
  if (vv[1] != xx[1]) printf("108\n");
#pragma omp atomic read
  vv[1] = t.x;
  if (vv[1] != t.x) printf("109\n");
#pragma omp atomic read
  vv[1] = t.xx[1];
  if (vv[1] != t.xx[1]) printf("110\n");
#pragma omp atomic read
  vv[1] = tt[1].x;
  if (vv[1] != tt[1].x) printf("111\n");
#pragma omp atomic read
  vv[1] = tt[1].xx[1];
  if (vv[1] != tt[1].xx[1]) printf("112\n");

#pragma omp atomic read
  t.v = x;
  if (t.v != x) printf("113\n");
#pragma omp atomic read
  t.v = xx[1];
  if (t.v != xx[1]) printf("114\n");
#pragma omp atomic read
  t.v = t.x;
  if (t.v != t.x) printf("115\n");
#pragma omp atomic read
  t.v = t.xx[1];
  if (t.v != t.xx[1]) printf("116\n");
#pragma omp atomic read
  t.v = tt[1].x;
  if (t.v != tt[1].x) printf("117\n");
#pragma omp atomic read
  t.v = tt[1].xx[1];
  if (t.v != tt[1].xx[1]) printf("118\n");

#pragma omp atomic read
  t.vv[1] = x;
  if (t.vv[1] != x) printf("119\n");
#pragma omp atomic read
  t.vv[1] = xx[1];
  if (t.vv[1] != xx[1]) printf("120\n");
#pragma omp atomic read
  t.vv[1] = t.x;
  if (t.vv[1] != t.x) printf("121\n");
#pragma omp atomic read
  t.vv[1] = t.xx[1];
  if (t.vv[1] != t.xx[1]) printf("122\n");
#pragma omp atomic read
  t.vv[1] = tt[1].x;
  if (t.vv[1] != tt[1].x) printf("123\n");
#pragma omp atomic read
  t.vv[1] = tt[1].xx[1];
  if (t.vv[1] != tt[1].xx[1]) printf("124\n");

#pragma omp atomic read
  tt[1].vv[1] = x;
  if (tt[1].vv[1] != x) printf("125\n");
#pragma omp atomic read
  tt[1].vv[1] = xx[1];
  if (tt[1].vv[1] != xx[1]) printf("126\n");
#pragma omp atomic read
  tt[1].vv[1] = t.x;
  if (tt[1].vv[1] != t.x) printf("127\n");
#pragma omp atomic read
  tt[1].vv[1] = t.xx[1];
  if (tt[1].vv[1] != t.xx[1]) printf("128\n");
#pragma omp atomic read
  tt[1].vv[1] = tt[1].x;
  if (tt[1].vv[1] != tt[1].x) printf("129\n");
#pragma omp atomic read
  tt[1].vv[1] = tt[1].xx[1];
  if (tt[1].vv[1] != tt[1].xx[1]) printf("130\n");

  printf("pass\n");
  return 0;
}
