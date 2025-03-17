#include <stdio.h>
int main() {
  short int               i2v, i2x;
  int i;
  i2x = 1;
  i = 1;

#pragma omp atomic capture
  i2v = i2x++;
  if (i2v != 1 || i2x != 2) printf("101\n");
#pragma omp atomic capture
  i2v = i2x--;
  if (i2v != 2 || i2x != 1) printf("102\n");
#pragma omp atomic capture
  i2v = ++i2x;
  if (i2v != 2 || i2x != 2) printf("103\n");
#pragma omp atomic capture
  i2v = --i2x;
  if (i2v != 1 || i2x != 1) printf("104\n");
#pragma omp atomic capture
  i2v = i2x += (i + 1);
  if (i2v != 3 || i2x != 3) printf("105\n");

#pragma omp atomic capture
  {i2v = i2x; i2x += (i + 1);}
  if (i2v != 3 || i2x != 5) printf("106\n");
#pragma omp atomic capture
  {i2x += (i + 1); i2v = i2x;}
  if (i2v != 7 || i2x != 7) printf("107\n");
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x + (i + 1);}
  if (i2v != 7 || i2x != 9) printf("108\n");
#pragma omp atomic capture
  {i2x = i2x + (i + 1); i2v = i2x;}
  if (i2v != 11 || i2x != 11) printf("109\n");
#pragma omp atomic capture
  {i2v = i2x; i2x++;}
  if (i2v != 11 || i2x != 12) printf("110\n");
#pragma omp atomic capture
  {i2v = i2x; ++i2x;}
  if (i2v != 12 || i2x != 13) printf("111\n");
#pragma omp atomic capture
  {++i2x; i2v = i2x;}
  if (i2v != 14 || i2x != 14) printf("112\n");
#pragma omp atomic capture
  {i2x++; i2v = i2x;}
  if (i2v != 15 || i2x != 15) printf("113\n");
#pragma omp atomic capture
  {i2v = i2x; i2x--;}
  if (i2v != 15 || i2x != 14) printf("114\n");
#pragma omp atomic capture
  {i2v = i2x; --i2x;}
  if (i2v != 14 || i2x != 13) printf("115\n");
#pragma omp atomic capture
  {--i2x; i2v = i2x;}
  if (i2v != 12 || i2x != 12) printf("116\n");
#pragma omp atomic capture
  {i2x--; i2v = i2x;}
  if (i2v != 11 || i2x != 11) printf("117\n");

  i2x = 2;
#pragma omp atomic capture
  i2v = i2x *= (i + 1);
  if (i2v != 4 || i2x != 4) printf("118\n");
  i2x = 2;
#pragma omp atomic capture
  {i2v = i2x; i2x *= (i + 1);}
  if (i2v != 2 || i2x != 4) printf("119\n");
  i2x = 2;
#pragma omp atomic capture
  {i2x *= (i + 1); i2v = i2x;}
  if (i2v != 4 || i2x != 4) printf("120\n");
  i2x = 2;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x * (i + 1);}
  if (i2v != 2 || i2x != 4) printf("121\n");
  i2x = 2;
#pragma omp atomic capture
  {i2x = i2x * (i + 1); i2v = i2x;}
  if (i2v != 4 || i2x != 4) printf("122\n");

  i2x = 4;
#pragma omp atomic capture
  i2v = i2x /= (i + 1);
  if (i2v != 2 || i2x != 2) printf("123\n");
  i2x = 4;
#pragma omp atomic capture
  {i2v = i2x; i2x /= (i + 1);}
  if (i2v != 4 || i2x != 2) printf("124\n");
  i2x = 4;
#pragma omp atomic capture
  {i2x /= (i + 1); i2v = i2x;}
  if (i2v != 2 || i2x != 2) printf("125\n");
  i2x = 4;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x / (i + 1);}
  if (i2v != 4 || i2x != 2) printf("126\n");
  i2x = 4;
#pragma omp atomic capture
  {i2x = i2x / (i + 1); i2v = i2x;}
  if (i2v != 2 || i2x != 2) printf("127\n");

  i2x = 4;
#pragma omp atomic capture
  i2v = i2x -= (i + 1);
  if (i2v != 2 || i2x != 2) printf("128\n");
  i2x = 4;
#pragma omp atomic capture
  {i2v = i2x; i2x -= (i + 1);}
  if (i2v != 4 || i2x != 2) printf("129\n");
  i2x = 4;
#pragma omp atomic capture
  {i2x -= (i + 1); i2v = i2x;}
  if (i2v != 2 || i2x != 2) printf("130\n");
  i2x = 4;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x - (i + 1);}
  if (i2v != 4 || i2x != 2) printf("131\n");
  i2x = 4;
#pragma omp atomic capture
  {i2x = i2x - (i + 1); i2v = i2x;}
  if (i2v != 2 || i2x != 2) printf("132\n");

  i2x = 7;
#pragma omp atomic capture
  i2v = i2x &= (i + 1);
  if (i2v != 2 || i2x != 2) printf("133\n");
  i2x = 7;
#pragma omp atomic capture
  {i2v = i2x; i2x &= (i + 1);}
  if (i2v != 7 || i2x != 2) printf("134\n");
  i2x = 7;
#pragma omp atomic capture
  {i2x &= (i + 1); i2v = i2x;}
  if (i2v != 2 || i2x != 2) printf("135\n");
  i2x = 7;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x & (i + 1);}
  if (i2v != 7 || i2x != 2) printf("136\n");
  i2x = 7;
#pragma omp atomic capture
  {i2x = i2x & (i + 1); i2v = i2x;}
  if (i2v != 2 || i2x != 2) printf("137\n");

  i2x = 5;
#pragma omp atomic capture
  i2v = i2x |= (i + 1);
  if (i2v != 7 || i2x != 7) printf("138\n");
  i2x = 5;
#pragma omp atomic capture
  {i2v = i2x; i2x |= (i + 1);}
  if (i2v != 5 || i2x != 7) printf("139\n");
  i2x = 5;
#pragma omp atomic capture
  {i2x |= (i + 1); i2v = i2x;}
  if (i2v != 7 || i2x != 7) printf("140\n");
  i2x = 5;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x | (i + 1);}
  if (i2v != 5 || i2x != 7) printf("141\n");
  i2x = 5;
#pragma omp atomic capture
  {i2x = i2x | (i + 1); i2v = i2x;}
  if (i2v != 7 || i2x != 7) printf("142\n");

  i2x = 7;
#pragma omp atomic capture
  i2v = i2x ^= (i + 1);
  if (i2v != 5 || i2x != 5) printf("143\n");
  i2x = 7;
#pragma omp atomic capture
  {i2v = i2x; i2x ^= (i + 1);}
  if (i2v != 7 || i2x != 5) printf("144\n");
  i2x = 7;
#pragma omp atomic capture
  {i2x ^= (i + 1); i2v = i2x;}
  if (i2v != 5 || i2x != 5) printf("145\n");
  i2x = 7;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x ^ (i + 1);}
  if (i2v != 7 || i2x != 5) printf("146\n");
  i2x = 7;
#pragma omp atomic capture
  {i2x = i2x ^ (i + 1); i2v = i2x;}
  if (i2v != 5 || i2x != 5) printf("147\n");

  i2x = 1;
#pragma omp atomic capture
  i2v = i2x <<= (i + 1);
  if (i2v != 4 || i2x != 4) printf("148\n");
  i2x = 1;
#pragma omp atomic capture
  {i2v = i2x; i2x <<= (i + 1);}
  if (i2v != 1 || i2x != 4) printf("149\n");
  i2x = 1;
#pragma omp atomic capture
  {i2x <<= (i + 1); i2v = i2x;}
  if (i2v != 4 || i2x != 4) printf("150\n");
  i2x = 1;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x << (i + 1);}
  if (i2v != 1 || i2x != 4) printf("151\n");
  i2x = 1;
#pragma omp atomic capture
  {i2x = i2x << (i + 1); i2v = i2x;}
  if (i2v != 4 || i2x != 4) printf("152\n");

  i2x = 4;
#pragma omp atomic capture
  i2v = i2x >>= (i + 1);
  if (i2v != 1 || i2x != 1) printf("153\n");
  i2x = 4;
#pragma omp atomic capture
  {i2v = i2x; i2x >>= (i + 1);}
  if (i2v != 4 || i2x != 1) printf("154\n");
  i2x = 4;
#pragma omp atomic capture
  {i2x >>= (i + 1); i2v = i2x;}
  if (i2v != 1 || i2x != 1) printf("155\n");
  i2x = 4;
#pragma omp atomic capture
  {i2v = i2x; i2x = i2x >> (i + 1);}
  if (i2v != 4 || i2x != 1) printf("156\n");
  i2x = 4;
#pragma omp atomic capture
  {i2x = i2x >> (i + 1); i2v = i2x;}
  if (i2v != 1 || i2x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
