
#include <stdio.h>
int main() {
  float r4v, r4x;
  int i;
  r4x = 1;
  i = 1;

#pragma omp atomic capture
  r4v = r4x++;
  if (r4v != 1 || r4x != 2) printf("101\n");
#pragma omp atomic capture
  r4v = r4x--;
  if (r4v != 2 || r4x != 1) printf("102\n");
#pragma omp atomic capture
  r4v = ++r4x;
  if (r4v != 2 || r4x != 2) printf("103\n");
#pragma omp atomic capture
  r4v = --r4x;
  if (r4v != 1 || r4x != 1) printf("104\n");
#pragma omp atomic capture
  r4v = r4x += (i + 1);
  if (r4v != 3 || r4x != 3) printf("105\n");

#pragma omp atomic capture
  {r4v = r4x; r4x += (i + 1);}
  if (r4v != 3 || r4x != 5) printf("106\n");
#pragma omp atomic capture
  {r4x += (i + 1); r4v = r4x;}
  if (r4v != 7 || r4x != 7) printf("107\n");
#pragma omp atomic capture
  {r4v = r4x; r4x = r4x + (i + 1);}
  if (r4v != 7 || r4x != 9) printf("108\n");
#pragma omp atomic capture
  {r4x = r4x + (i + 1); r4v = r4x;}
  if (r4v != 11 || r4x != 11) printf("109\n");
#pragma omp atomic capture
  {r4v = r4x; r4x++;}
  if (r4v != 11 || r4x != 12) printf("110\n");
#pragma omp atomic capture
  {r4v = r4x; ++r4x;}
  if (r4v != 12 || r4x != 13) printf("111\n");
#pragma omp atomic capture
  {++r4x; r4v = r4x;}
  if (r4v != 14 || r4x != 14) printf("112\n");
#pragma omp atomic capture
  {r4x++; r4v = r4x;}
  if (r4v != 15 || r4x != 15) printf("113\n");
#pragma omp atomic capture
  {r4v = r4x; r4x--;}
  if (r4v != 15 || r4x != 14) printf("114\n");
#pragma omp atomic capture
  {r4v = r4x; --r4x;}
  if (r4v != 14 || r4x != 13) printf("115\n");
#pragma omp atomic capture
  {--r4x; r4v = r4x;}
  if (r4v != 12 || r4x != 12) printf("116\n");
#pragma omp atomic capture
  {r4x--; r4v = r4x;}
  if (r4v != 11 || r4x != 11) printf("117\n");

  
  r4x = 2;
#pragma omp atomic capture
  r4v = r4x *= (i + 1);
  if (r4v != 4 || r4x != 4) printf("118\n");
  r4x = 2;
#pragma omp atomic capture
  {r4v = r4x; r4x *= (i + 1);}
  if (r4v != 2 || r4x != 4) printf("119\n");
  r4x = 2;
#pragma omp atomic capture
  {r4x *= (i + 1); r4v = r4x;}
  if (r4v != 4 || r4x != 4) printf("120\n");
  r4x = 2;
#pragma omp atomic capture
  {r4v = r4x; r4x = r4x * (i + 1);}
  if (r4v != 2 || r4x != 4) printf("121\n");
  r4x = 2;
#pragma omp atomic capture
  {r4x = r4x * (i + 1); r4v = r4x;}
  if (r4v != 4 || r4x != 4) printf("122\n");

  
  r4x = 4;
#pragma omp atomic capture
  r4v = r4x /= (i + 1);
  if (r4v != 2 || r4x != 2) printf("123\n");
  r4x = 4;
#pragma omp atomic capture
  {r4v = r4x; r4x /= (i + 1);}
  if (r4v != 4 || r4x != 2) printf("124\n");
  r4x = 4;
#pragma omp atomic capture
  {r4x /= (i + 1); r4v = r4x;}
  if (r4v != 2 || r4x != 2) printf("125\n");
  r4x = 4;
#pragma omp atomic capture
  {r4v = r4x; r4x = r4x / (i + 1);}
  if (r4v != 4 || r4x != 2) printf("126\n");
  r4x = 4;
#pragma omp atomic capture
  {r4x = r4x / (i + 1); r4v = r4x;}
  if (r4v != 2 || r4x != 2) printf("127\n");

  
  r4x = 4;
#pragma omp atomic capture
  r4v = r4x -= (i + 1);
  if (r4v != 2 || r4x != 2) printf("128\n");
  r4x = 4;
#pragma omp atomic capture
  {r4v = r4x; r4x -= (i + 1);}
  if (r4v != 4 || r4x != 2) printf("129\n");
  r4x = 4;
#pragma omp atomic capture
  {r4x -= (i + 1); r4v = r4x;}
  if (r4v != 2 || r4x != 2) printf("130\n");
  r4x = 4;
#pragma omp atomic capture
  {r4v = r4x; r4x = r4x - (i + 1);}
  if (r4v != 4 || r4x != 2) printf("131\n");
  r4x = 4;
#pragma omp atomic capture
  {r4x = r4x - (i + 1); r4v = r4x;}
  if (r4v != 2 || r4x != 2) printf("132\n");

  printf("pass\n");
  return 0;
}
