
#include <stdio.h>
struct t1 {
  int v, x, vv[2], xx[2];
};
int foo(int a, int b) {
  return a + b;
}
int main() {
  int v, x, vv[2], xx[2];
  struct t1 t,tt[2];
  v = 1;
  vv[1] = 2;
  t.v = 3;
  t.vv[1] = 4;
  tt[1].v = 5;
  tt[1].vv[1] = 6;

#pragma omp atomic write
  x = 1;
  if (x != 1) printf("101\n");
#pragma omp atomic write
  x = v;
  if (x != v) printf("102\n");
#pragma omp atomic write
  x = v + 1;
  if (x != v+1) printf("103\n");
#pragma omp atomic write
  x = v + (v + 1);
  if (x != v+v+1) printf("104\n");
#pragma omp atomic write
  x = foo(vv[1], t.vv[1]);
  if (x != vv[1]+t.vv[1]) printf("105\n");
#pragma omp atomic write
  x = foo(vv[1], t.vv[1]) + t.v;
  if (x != vv[1]+t.vv[1]+t.v) printf("106\n");

#pragma omp atomic write
  xx[1] = vv[1] + vv[1];
  if (xx[1] != vv[1] + vv[1]) printf("107\n");
#pragma omp atomic write
  xx[1] = vv[1] * t.v;
  if (xx[1] != vv[1] * t.v) printf("108\n");
#pragma omp atomic write
  xx[1] = t.v + t.v;
  if (xx[1] != t.v + t.v) printf("109\n");
#pragma omp atomic write
  xx[1] = t.vv[1] - t.vv[1];
  if (xx[1] != t.vv[1] - t.vv[1]) printf("110\n");
#pragma omp atomic write
  xx[1] = foo(tt[1].v, tt[1].v);
  if (xx[1] != tt[1].v + tt[1].v) printf("111\n");
#pragma omp atomic write
  xx[1] = foo(tt[1].vv[1],tt[1].v)+tt[1].v;
  if (xx[1] != tt[1].vv[1]+tt[1].v+tt[1].v) printf("112\n");

#pragma omp atomic write
  t.x = v+v;
  if (t.x != v+v) printf("113\n");
#pragma omp atomic write
  t.x = vv[1]+vv[1];
  if (t.x != vv[1]+vv[1]) printf("114\n");
#pragma omp atomic write
  t.x = t.v+t.v;
  if (t.x != t.v+t.v) printf("115\n");
#pragma omp atomic write
  t.x = t.vv[1]+t.vv[1];
  if (t.x != t.vv[1]+t.vv[1]) printf("116\n");
#pragma omp atomic write
  t.x = foo(tt[1].v, tt[1].v);
  if (t.x != tt[1].v+tt[1].v) printf("117\n");
#pragma omp atomic write
  t.x = foo(tt[1].vv[1], t.vv[1])+tt[1].v;
  if (t.x != tt[1].vv[1]+t.vv[1]+tt[1].v) printf("118\n");

#pragma omp atomic write
  t.xx[1] = v;
  if (t.xx[1] != v) printf("119\n");
#pragma omp atomic write
  t.xx[1] = vv[1];
  if (t.xx[1] != vv[1]) printf("120\n");
#pragma omp atomic write
  t.xx[1] = t.v;
  if (t.xx[1] != t.v) printf("121\n");
#pragma omp atomic write
  t.xx[1] = t.vv[1];
  if (t.xx[1] != t.vv[1]) printf("122\n");
#pragma omp atomic write
  t.xx[1] = tt[1].v;
  if (t.xx[1] != tt[1].v) printf("123\n");
#pragma omp atomic write
  t.xx[1] = tt[1].vv[1];
  if (t.xx[1] != tt[1].vv[1]) printf("124\n");

#pragma omp atomic write
  tt[1].xx[1] = v;
  if (tt[1].xx[1] != v) printf("125\n");
#pragma omp atomic write
  tt[1].xx[1] = vv[1];
  if (tt[1].xx[1] != vv[1]) printf("126\n");
#pragma omp atomic write
  tt[1].xx[1] = t.v;
  if (tt[1].xx[1] != t.v) printf("127\n");
#pragma omp atomic write
  tt[1].xx[1] = t.vv[1];
  if (tt[1].xx[1] != t.vv[1]) printf("128\n");
#pragma omp atomic write
  tt[1].xx[1] = tt[1].v;
  if (tt[1].xx[1] != tt[1].v) printf("129\n");
#pragma omp atomic write
  tt[1].xx[1] = tt[1].vv[1];
  if (tt[1].xx[1] != tt[1].vv[1]) printf("130\n");

  printf("pass\n");
  return 0;
}
