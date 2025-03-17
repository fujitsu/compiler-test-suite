#include <stdio.h>
int main() {
  long int               i8v, i8x;
  int i;
  i8x = 1;
  i = 1;

#pragma omp atomic capture
  i8v = i8x++;
  if (i8v != 1 || i8x != 2) printf("101\n");
#pragma omp atomic capture
  i8v = i8x--;
  if (i8v != 2 || i8x != 1) printf("102\n");
#pragma omp atomic capture
  i8v = ++i8x;
  if (i8v != 2 || i8x != 2) printf("103\n");
#pragma omp atomic capture
  i8v = --i8x;
  if (i8v != 1 || i8x != 1) printf("104\n");
#pragma omp atomic capture
  i8v = i8x += (i + 1);
  if (i8v != 3 || i8x != 3) printf("105\n");

#pragma omp atomic capture
  {i8v = i8x; i8x += (i + 1);}
  if (i8v != 3 || i8x != 5) printf("106\n");
#pragma omp atomic capture
  {i8x += (i + 1); i8v = i8x;}
  if (i8v != 7 || i8x != 7) printf("107\n");
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x + (i + 1);}
  if (i8v != 7 || i8x != 9) printf("108\n");
#pragma omp atomic capture
  {i8x = i8x + (i + 1); i8v = i8x;}
  if (i8v != 11 || i8x != 11) printf("109\n");
#pragma omp atomic capture
  {i8v = i8x; i8x++;}
  if (i8v != 11 || i8x != 12) printf("110\n");
#pragma omp atomic capture
  {i8v = i8x; ++i8x;}
  if (i8v != 12 || i8x != 13) printf("111\n");
#pragma omp atomic capture
  {++i8x; i8v = i8x;}
  if (i8v != 14 || i8x != 14) printf("112\n");
#pragma omp atomic capture
  {i8x++; i8v = i8x;}
  if (i8v != 15 || i8x != 15) printf("113\n");
#pragma omp atomic capture
  {i8v = i8x; i8x--;}
  if (i8v != 15 || i8x != 14) printf("114\n");
#pragma omp atomic capture
  {i8v = i8x; --i8x;}
  if (i8v != 14 || i8x != 13) printf("115\n");
#pragma omp atomic capture
  {--i8x; i8v = i8x;}
  if (i8v != 12 || i8x != 12) printf("116\n");
#pragma omp atomic capture
  {i8x--; i8v = i8x;}
  if (i8v != 11 || i8x != 11) printf("117\n");

  i8x = 2;
#pragma omp atomic capture
  i8v = i8x *= (i + 1);
  if (i8v != 4 || i8x != 4) printf("118\n");
  i8x = 2;
#pragma omp atomic capture
  {i8v = i8x; i8x *= (i + 1);}
  if (i8v != 2 || i8x != 4) printf("119\n");
  i8x = 2;
#pragma omp atomic capture
  {i8x *= (i + 1); i8v = i8x;}
  if (i8v != 4 || i8x != 4) printf("120\n");
  i8x = 2;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x * (i + 1);}
  if (i8v != 2 || i8x != 4) printf("121\n");
  i8x = 2;
#pragma omp atomic capture
  {i8x = i8x * (i + 1); i8v = i8x;}
  if (i8v != 4 || i8x != 4) printf("122\n");

  i8x = 4;
#pragma omp atomic capture
  i8v = i8x /= (i + 1);
  if (i8v != 2 || i8x != 2) printf("123\n");
  i8x = 4;
#pragma omp atomic capture
  {i8v = i8x; i8x /= (i + 1);}
  if (i8v != 4 || i8x != 2) printf("124\n");
  i8x = 4;
#pragma omp atomic capture
  {i8x /= (i + 1); i8v = i8x;}
  if (i8v != 2 || i8x != 2) printf("125\n");
  i8x = 4;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x / (i + 1);}
  if (i8v != 4 || i8x != 2) printf("126\n");
  i8x = 4;
#pragma omp atomic capture
  {i8x = i8x / (i + 1); i8v = i8x;}
  if (i8v != 2 || i8x != 2) printf("127\n");

  i8x = 4;
#pragma omp atomic capture
  i8v = i8x -= (i + 1);
  if (i8v != 2 || i8x != 2) printf("128\n");
  i8x = 4;
#pragma omp atomic capture
  {i8v = i8x; i8x -= (i + 1);}
  if (i8v != 4 || i8x != 2) printf("129\n");
  i8x = 4;
#pragma omp atomic capture
  {i8x -= (i + 1); i8v = i8x;}
  if (i8v != 2 || i8x != 2) printf("130\n");
  i8x = 4;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x - (i + 1);}
  if (i8v != 4 || i8x != 2) printf("131\n");
  i8x = 4;
#pragma omp atomic capture
  {i8x = i8x - (i + 1); i8v = i8x;}
  if (i8v != 2 || i8x != 2) printf("132\n");

  i8x = 7;
#pragma omp atomic capture
  i8v = i8x &= (i + 1);
  if (i8v != 2 || i8x != 2) printf("133\n");
  i8x = 7;
#pragma omp atomic capture
  {i8v = i8x; i8x &= (i + 1);}
  if (i8v != 7 || i8x != 2) printf("134\n");
  i8x = 7;
#pragma omp atomic capture
  {i8x &= (i + 1); i8v = i8x;}
  if (i8v != 2 || i8x != 2) printf("135\n");
  i8x = 7;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x & (i + 1);}
  if (i8v != 7 || i8x != 2) printf("136\n");
  i8x = 7;
#pragma omp atomic capture
  {i8x = i8x & (i + 1); i8v = i8x;}
  if (i8v != 2 || i8x != 2) printf("137\n");

  i8x = 5;
#pragma omp atomic capture
  i8v = i8x |= (i + 1);
  if (i8v != 7 || i8x != 7) printf("138\n");
  i8x = 5;
#pragma omp atomic capture
  {i8v = i8x; i8x |= (i + 1);}
  if (i8v != 5 || i8x != 7) printf("139\n");
  i8x = 5;
#pragma omp atomic capture
  {i8x |= (i + 1); i8v = i8x;}
  if (i8v != 7 || i8x != 7) printf("140\n");
  i8x = 5;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x | (i + 1);}
  if (i8v != 5 || i8x != 7) printf("141\n");
  i8x = 5;
#pragma omp atomic capture
  {i8x = i8x | (i + 1); i8v = i8x;}
  if (i8v != 7 || i8x != 7) printf("142\n");

  i8x = 7;
#pragma omp atomic capture
  i8v = i8x ^= (i + 1);
  if (i8v != 5 || i8x != 5) printf("143\n");
  i8x = 7;
#pragma omp atomic capture
  {i8v = i8x; i8x ^= (i + 1);}
  if (i8v != 7 || i8x != 5) printf("144\n");
  i8x = 7;
#pragma omp atomic capture
  {i8x ^= (i + 1); i8v = i8x;}
  if (i8v != 5 || i8x != 5) printf("145\n");
  i8x = 7;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x ^ (i + 1);}
  if (i8v != 7 || i8x != 5) printf("146\n");
  i8x = 7;
#pragma omp atomic capture
  {i8x = i8x ^ (i + 1); i8v = i8x;}
  if (i8v != 5 || i8x != 5) printf("147\n");

  i8x = 1;
#pragma omp atomic capture
  i8v = i8x <<= (i + 1);
  if (i8v != 4 || i8x != 4) printf("148\n");
  i8x = 1;
#pragma omp atomic capture
  {i8v = i8x; i8x <<= (i + 1);}
  if (i8v != 1 || i8x != 4) printf("149\n");
  i8x = 1;
#pragma omp atomic capture
  {i8x <<= (i + 1); i8v = i8x;}
  if (i8v != 4 || i8x != 4) printf("150\n");
  i8x = 1;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x << (i + 1);}
  if (i8v != 1 || i8x != 4) printf("151\n");
  i8x = 1;
#pragma omp atomic capture
  {i8x = i8x << (i + 1); i8v = i8x;}
  if (i8v != 4 || i8x != 4) printf("152\n");

  i8x = 4;
#pragma omp atomic capture
  i8v = i8x >>= (i + 1);
  if (i8v != 1 || i8x != 1) printf("153\n");
  i8x = 4;
#pragma omp atomic capture
  {i8v = i8x; i8x >>= (i + 1);}
  if (i8v != 4 || i8x != 1) printf("154\n");
  i8x = 4;
#pragma omp atomic capture
  {i8x >>= (i + 1); i8v = i8x;}
  if (i8v != 1 || i8x != 1) printf("155\n");
  i8x = 4;
#pragma omp atomic capture
  {i8v = i8x; i8x = i8x >> (i + 1);}
  if (i8v != 4 || i8x != 1) printf("156\n");
  i8x = 4;
#pragma omp atomic capture
  {i8x = i8x >> (i + 1); i8v = i8x;}
  if (i8v != 1 || i8x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
