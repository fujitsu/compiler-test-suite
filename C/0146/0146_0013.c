
#include <stdio.h>
int main() {
  int *p8v, *p8x;
  int i;
  p8x = (void*)1;
  i = 1;

#pragma omp atomic capture
  p8v = p8x++;
  if (p8v != (void*)1 || p8x != (void*)5) printf("101\n");
#pragma omp atomic capture
  p8v = p8x--;
  if (p8v != (void*)5 || p8x != (void*)1) printf("102\n");
#pragma omp atomic capture
  p8v = ++p8x;
  if (p8v != (void*)5 || p8x != (void*)5) printf("103\n");
#pragma omp atomic capture
  p8v = --p8x;
  if (p8v != (void*)1 || p8x != (void*)1) printf("104\n");
#pragma omp atomic capture
  p8v = p8x += (i + 1);
  if (p8v != (void*)9 || p8x != (void*)9) printf("105\n");

  p8x = (void*)1;
#pragma omp atomic capture
  {p8v = p8x; p8x += (i + 1);}
  if (p8v != (void*)1 || p8x != (void*)9) printf("106\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {p8x += (i + 1); p8v = p8x;}
  if (p8v != (void*)9 || p8x != (void*)9) printf("107\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {p8v = p8x; p8x = p8x + (i + 1);}
  if (p8v != (void*)1 || p8x != (void*)9) printf("108\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {p8x = p8x + (i + 1); p8v = p8x;}
  if (p8v != (void*)9 || p8x != (void*)9) printf("109\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {p8v = p8x; p8x++;}
  if (p8v != (void*)1 || p8x != (void*)5) printf("110\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {p8v = p8x; ++p8x;}
  if (p8v != (void*)1 || p8x != (void*)5) printf("111\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {++p8x; p8v = p8x;}
  if (p8v != (void*)5 || p8x != (void*)5) printf("112\n");
  p8x = (void*)1;
#pragma omp atomic capture
  {p8x++; p8v = p8x;}
  if (p8v != (void*)5 || p8x != (void*)5) printf("113\n");
  p8x = (void*)5;
#pragma omp atomic capture
  {p8v = p8x; p8x--;}
  if (p8v != (void*)5 || p8x != (void*)1) printf("114\n");
  p8x = (void*)5;
#pragma omp atomic capture
  {p8v = p8x; --p8x;}
  if (p8v != (void*)5 || p8x != (void*)1) printf("115\n");
  p8x = (void*)5;
#pragma omp atomic capture
  {--p8x; p8v = p8x;}
  if (p8v != (void*)1 || p8x != (void*)1) printf("116\n");
  p8x = (void*)5;
#pragma omp atomic capture
  {p8x--; p8v = p8x;}
  if (p8v != (void*)1 || p8x != (void*)1) printf("117\n");

  
  p8x = (void*)10;
#pragma omp atomic capture
  p8v = p8x -= (i + 1);
  if (p8v != (void*)2 || p8x != (void*)2) printf("128\n");
  p8x = (void*)10;
#pragma omp atomic capture
  {p8v = p8x; p8x -= (i + 1);}
  if (p8v != (void*)10 || p8x != (void*)2) printf("129\n");
  p8x = (void*)10;
#pragma omp atomic capture
  {p8x -= (i + 1); p8v = p8x;}
  if (p8v != (void*)2 || p8x != (void*)2) printf("130\n");
  p8x = (void*)10;
#pragma omp atomic capture
  {p8v = p8x; p8x = p8x - (i + 1);}
  if (p8v != (void*)10 || p8x != (void*)2) printf("131\n");
  p8x = (void*)10;
#pragma omp atomic capture
  {p8x = p8x - (i + 1); p8v = p8x;}
  if (p8v != (void*)2 || p8x != (void*)2) printf("132\n");

  printf("pass\n");
  return 0;
}
