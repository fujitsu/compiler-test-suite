#include <stdio.h>
int main() {
  char               i1v, i1x;
  int i;
  i1x = 1;
  i = 1;

#pragma omp atomic capture
  i1v = i1x++;
  if (i1v != 1 || i1x != 2) printf("101\n");
#pragma omp atomic capture
  i1v = i1x--;
  if (i1v != 2 || i1x != 1) printf("102\n");
#pragma omp atomic capture
  i1v = ++i1x;
  if (i1v != 2 || i1x != 2) printf("103\n");
#pragma omp atomic capture
  i1v = --i1x;
  if (i1v != 1 || i1x != 1) printf("104\n");
#pragma omp atomic capture
  i1v = i1x += (i + 1);
  if (i1v != 3 || i1x != 3) printf("105\n");

#pragma omp atomic capture
  {i1v = i1x; i1x += (i + 1);}
  if (i1v != 3 || i1x != 5) printf("106\n");
#pragma omp atomic capture
  {i1x += (i + 1); i1v = i1x;}
  if (i1v != 7 || i1x != 7) printf("107\n");
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x + (i + 1);}
  if (i1v != 7 || i1x != 9) printf("108\n");
#pragma omp atomic capture
  {i1x = i1x + (i + 1); i1v = i1x;}
  if (i1v != 11 || i1x != 11) printf("109\n");
#pragma omp atomic capture
  {i1v = i1x; i1x++;}
  if (i1v != 11 || i1x != 12) printf("110\n");
#pragma omp atomic capture
  {i1v = i1x; ++i1x;}
  if (i1v != 12 || i1x != 13) printf("111\n");
#pragma omp atomic capture
  {++i1x; i1v = i1x;}
  if (i1v != 14 || i1x != 14) printf("112\n");
#pragma omp atomic capture
  {i1x++; i1v = i1x;}
  if (i1v != 15 || i1x != 15) printf("113\n");
#pragma omp atomic capture
  {i1v = i1x; i1x--;}
  if (i1v != 15 || i1x != 14) printf("114\n");
#pragma omp atomic capture
  {i1v = i1x; --i1x;}
  if (i1v != 14 || i1x != 13) printf("115\n");
#pragma omp atomic capture
  {--i1x; i1v = i1x;}
  if (i1v != 12 || i1x != 12) printf("116\n");
#pragma omp atomic capture
  {i1x--; i1v = i1x;}
  if (i1v != 11 || i1x != 11) printf("117\n");

  i1x = 2;
#pragma omp atomic capture
  i1v = i1x *= (i + 1);
  if (i1v != 4 || i1x != 4) printf("118\n");
  i1x = 2;
#pragma omp atomic capture
  {i1v = i1x; i1x *= (i + 1);}
  if (i1v != 2 || i1x != 4) printf("119\n");
  i1x = 2;
#pragma omp atomic capture
  {i1x *= (i + 1); i1v = i1x;}
  if (i1v != 4 || i1x != 4) printf("120\n");
  i1x = 2;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x * (i + 1);}
  if (i1v != 2 || i1x != 4) printf("121\n");
  i1x = 2;
#pragma omp atomic capture
  {i1x = i1x * (i + 1); i1v = i1x;}
  if (i1v != 4 || i1x != 4) printf("122\n");

  i1x = 4;
#pragma omp atomic capture
  i1v = i1x /= (i + 1);
  if (i1v != 2 || i1x != 2) printf("123\n");
  i1x = 4;
#pragma omp atomic capture
  {i1v = i1x; i1x /= (i + 1);}
  if (i1v != 4 || i1x != 2) printf("124\n");
  i1x = 4;
#pragma omp atomic capture
  {i1x /= (i + 1); i1v = i1x;}
  if (i1v != 2 || i1x != 2) printf("125\n");
  i1x = 4;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x / (i + 1);}
  if (i1v != 4 || i1x != 2) printf("126\n");
  i1x = 4;
#pragma omp atomic capture
  {i1x = i1x / (i + 1); i1v = i1x;}
  if (i1v != 2 || i1x != 2) printf("127\n");

  i1x = 4;
#pragma omp atomic capture
  i1v = i1x -= (i + 1);
  if (i1v != 2 || i1x != 2) printf("128\n");
  i1x = 4;
#pragma omp atomic capture
  {i1v = i1x; i1x -= (i + 1);}
  if (i1v != 4 || i1x != 2) printf("129\n");
  i1x = 4;
#pragma omp atomic capture
  {i1x -= (i + 1); i1v = i1x;}
  if (i1v != 2 || i1x != 2) printf("130\n");
  i1x = 4;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x - (i + 1);}
  if (i1v != 4 || i1x != 2) printf("131\n");
  i1x = 4;
#pragma omp atomic capture
  {i1x = i1x - (i + 1); i1v = i1x;}
  if (i1v != 2 || i1x != 2) printf("132\n");

  i1x = 7;
#pragma omp atomic capture
  i1v = i1x &= (i + 1);
  if (i1v != 2 || i1x != 2) printf("133\n");
  i1x = 7;
#pragma omp atomic capture
  {i1v = i1x; i1x &= (i + 1);}
  if (i1v != 7 || i1x != 2) printf("134\n");
  i1x = 7;
#pragma omp atomic capture
  {i1x &= (i + 1); i1v = i1x;}
  if (i1v != 2 || i1x != 2) printf("135\n");
  i1x = 7;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x & (i + 1);}
  if (i1v != 7 || i1x != 2) printf("136\n");
  i1x = 7;
#pragma omp atomic capture
  {i1x = i1x & (i + 1); i1v = i1x;}
  if (i1v != 2 || i1x != 2) printf("137\n");

  i1x = 5;
#pragma omp atomic capture
  i1v = i1x |= (i + 1);
  if (i1v != 7 || i1x != 7) printf("138\n");
  i1x = 5;
#pragma omp atomic capture
  {i1v = i1x; i1x |= (i + 1);}
  if (i1v != 5 || i1x != 7) printf("139\n");
  i1x = 5;
#pragma omp atomic capture
  {i1x |= (i + 1); i1v = i1x;}
  if (i1v != 7 || i1x != 7) printf("140\n");
  i1x = 5;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x | (i + 1);}
  if (i1v != 5 || i1x != 7) printf("141\n");
  i1x = 5;
#pragma omp atomic capture
  {i1x = i1x | (i + 1); i1v = i1x;}
  if (i1v != 7 || i1x != 7) printf("142\n");

  i1x = 7;
#pragma omp atomic capture
  i1v = i1x ^= (i + 1);
  if (i1v != 5 || i1x != 5) printf("143\n");
  i1x = 7;
#pragma omp atomic capture
  {i1v = i1x; i1x ^= (i + 1);}
  if (i1v != 7 || i1x != 5) printf("144\n");
  i1x = 7;
#pragma omp atomic capture
  {i1x ^= (i + 1); i1v = i1x;}
  if (i1v != 5 || i1x != 5) printf("145\n");
  i1x = 7;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x ^ (i + 1);}
  if (i1v != 7 || i1x != 5) printf("146\n");
  i1x = 7;
#pragma omp atomic capture
  {i1x = i1x ^ (i + 1); i1v = i1x;}
  if (i1v != 5 || i1x != 5) printf("147\n");

  i1x = 1;
#pragma omp atomic capture
  i1v = i1x <<= (i + 1);
  if (i1v != 4 || i1x != 4) printf("148\n");
  i1x = 1;
#pragma omp atomic capture
  {i1v = i1x; i1x <<= (i + 1);}
  if (i1v != 1 || i1x != 4) printf("149\n");
  i1x = 1;
#pragma omp atomic capture
  {i1x <<= (i + 1); i1v = i1x;}
  if (i1v != 4 || i1x != 4) printf("150\n");
  i1x = 1;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x << (i + 1);}
  if (i1v != 1 || i1x != 4) printf("151\n");
  i1x = 1;
#pragma omp atomic capture
  {i1x = i1x << (i + 1); i1v = i1x;}
  if (i1v != 4 || i1x != 4) printf("152\n");

  i1x = 4;
#pragma omp atomic capture
  i1v = i1x >>= (i + 1);
  if (i1v != 1 || i1x != 1) printf("153\n");
  i1x = 4;
#pragma omp atomic capture
  {i1v = i1x; i1x >>= (i + 1);}
  if (i1v != 4 || i1x != 1) printf("154\n");
  i1x = 4;
#pragma omp atomic capture
  {i1x >>= (i + 1); i1v = i1x;}
  if (i1v != 1 || i1x != 1) printf("155\n");
  i1x = 4;
#pragma omp atomic capture
  {i1v = i1x; i1x = i1x >> (i + 1);}
  if (i1v != 4 || i1x != 1) printf("156\n");
  i1x = 4;
#pragma omp atomic capture
  {i1x = i1x >> (i + 1); i1v = i1x;}
  if (i1v != 1 || i1x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
