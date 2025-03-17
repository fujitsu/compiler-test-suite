
#include <stdio.h>
int main() {
  double r8v, r8x;
  int i;
  r8x = 1;
  i = 1;

#pragma omp atomic capture
  r8v = r8x++;
  if (r8v != 1 || r8x != 2) printf("101\n");
#pragma omp atomic capture
  r8v = r8x--;
  if (r8v != 2 || r8x != 1) printf("102\n");
#pragma omp atomic capture
  r8v = ++r8x;
  if (r8v != 2 || r8x != 2) printf("103\n");
#pragma omp atomic capture
  r8v = --r8x;
  if (r8v != 1 || r8x != 1) printf("104\n");
#pragma omp atomic capture
  r8v = r8x += (i + 1);
  if (r8v != 3 || r8x != 3) printf("105\n");

#pragma omp atomic capture
  {r8v = r8x; r8x += (i + 1);}
  if (r8v != 3 || r8x != 5) printf("106\n");
#pragma omp atomic capture
  {r8x += (i + 1); r8v = r8x;}
  if (r8v != 7 || r8x != 7) printf("107\n");
#pragma omp atomic capture
  {r8v = r8x; r8x = r8x + (i + 1);}
  if (r8v != 7 || r8x != 9) printf("108\n");
#pragma omp atomic capture
  {r8x = r8x + (i + 1); r8v = r8x;}
  if (r8v != 11 || r8x != 11) printf("109\n");
#pragma omp atomic capture
  {r8v = r8x; r8x++;}
  if (r8v != 11 || r8x != 12) printf("110\n");
#pragma omp atomic capture
  {r8v = r8x; ++r8x;}
  if (r8v != 12 || r8x != 13) printf("111\n");
#pragma omp atomic capture
  {++r8x; r8v = r8x;}
  if (r8v != 14 || r8x != 14) printf("112\n");
#pragma omp atomic capture
  {r8x++; r8v = r8x;}
  if (r8v != 15 || r8x != 15) printf("113\n");
#pragma omp atomic capture
  {r8v = r8x; r8x--;}
  if (r8v != 15 || r8x != 14) printf("114\n");
#pragma omp atomic capture
  {r8v = r8x; --r8x;}
  if (r8v != 14 || r8x != 13) printf("115\n");
#pragma omp atomic capture
  {--r8x; r8v = r8x;}
  if (r8v != 12 || r8x != 12) printf("116\n");
#pragma omp atomic capture
  {r8x--; r8v = r8x;}
  if (r8v != 11 || r8x != 11) printf("117\n");

  
  r8x = 2;
#pragma omp atomic capture
  r8v = r8x *= (i + 1);
  if (r8v != 4 || r8x != 4) printf("118\n");
  r8x = 2;
#pragma omp atomic capture
  {r8v = r8x; r8x *= (i + 1);}
  if (r8v != 2 || r8x != 4) printf("119\n");
  r8x = 2;
#pragma omp atomic capture
  {r8x *= (i + 1); r8v = r8x;}
  if (r8v != 4 || r8x != 4) printf("120\n");
  r8x = 2;
#pragma omp atomic capture
  {r8v = r8x; r8x = r8x * (i + 1);}
  if (r8v != 2 || r8x != 4) printf("121\n");
  r8x = 2;
#pragma omp atomic capture
  {r8x = r8x * (i + 1); r8v = r8x;}
  if (r8v != 4 || r8x != 4) printf("122\n");

  
  r8x = 4;
#pragma omp atomic capture
  r8v = r8x /= (i + 1);
  if (r8v != 2 || r8x != 2) printf("123\n");
  r8x = 4;
#pragma omp atomic capture
  {r8v = r8x; r8x /= (i + 1);}
  if (r8v != 4 || r8x != 2) printf("124\n");
  r8x = 4;
#pragma omp atomic capture
  {r8x /= (i + 1); r8v = r8x;}
  if (r8v != 2 || r8x != 2) printf("125\n");
  r8x = 4;
#pragma omp atomic capture
  {r8v = r8x; r8x = r8x / (i + 1);}
  if (r8v != 4 || r8x != 2) printf("126\n");
  r8x = 4;
#pragma omp atomic capture
  {r8x = r8x / (i + 1); r8v = r8x;}
  if (r8v != 2 || r8x != 2) printf("127\n");

  
  r8x = 4;
#pragma omp atomic capture
  r8v = r8x -= (i + 1);
  if (r8v != 2 || r8x != 2) printf("128\n");
  r8x = 4;
#pragma omp atomic capture
  {r8v = r8x; r8x -= (i + 1);}
  if (r8v != 4 || r8x != 2) printf("129\n");
  r8x = 4;
#pragma omp atomic capture
  {r8x -= (i + 1); r8v = r8x;}
  if (r8v != 2 || r8x != 2) printf("130\n");
  r8x = 4;
#pragma omp atomic capture
  {r8v = r8x; r8x = r8x - (i + 1);}
  if (r8v != 4 || r8x != 2) printf("131\n");
  r8x = 4;
#pragma omp atomic capture
  {r8x = r8x - (i + 1); r8v = r8x;}
  if (r8v != 2 || r8x != 2) printf("132\n");

  printf("pass\n");
  return 0;
}
