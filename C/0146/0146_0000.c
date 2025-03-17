
#include <stdio.h>
int main() {
  int               i4v, i4x;
  int i;
  i4x = 1;
  i = 1;

#pragma omp atomic capture
  i4v = i4x++;
  if (i4v != 1 || i4x != 2) printf("101\n");
#pragma omp atomic capture
  i4v = i4x--;
  if (i4v != 2 || i4x != 1) printf("102\n");
#pragma omp atomic capture
  i4v = ++i4x;
  if (i4v != 2 || i4x != 2) printf("103\n");
#pragma omp atomic capture
  i4v = --i4x;
  if (i4v != 1 || i4x != 1) printf("104\n");
#pragma omp atomic capture
  i4v = i4x += (i + 1);
  if (i4v != 3 || i4x != 3) printf("105\n");
#pragma omp atomic capture
  i4v = i4x = i4x + (i + 1);
  if (i4v != 5 || i4x != 5) printf("105-2\n");
#pragma omp atomic capture
  i4v = i4x = (i + 1) + i4x;
  if (i4v != 7 || i4x != 7) printf("105-3\n");

  i4x = 3;
#pragma omp atomic capture
  {i4v = i4x; i4x += (i + 1);}
  if (i4v != 3 || i4x != 5) printf("106\n");
#pragma omp atomic capture
  {i4x += (i + 1); i4v = i4x;}
  if (i4v != 7 || i4x != 7) printf("107\n");
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x + (i + 1);}
  if (i4v != 7 || i4x != 9) printf("108\n");
  i4x = 7;
#pragma omp atomic capture
  {i4v = i4x; i4x = (i + 1) + i4x;}
  if (i4v != 7 || i4x != 9) printf("108-2\n");
#pragma omp atomic capture
  {i4x = i4x + (i + 1); i4v = i4x;}
  if (i4v != 11 || i4x != 11) printf("109\n");
  i4x = 9;
#pragma omp atomic capture
  {i4x = (i + 1) + i4x; i4v = i4x;}
  if (i4v != 11 || i4x != 11) printf("109-2\n");
#pragma omp atomic capture
  {i4v = i4x; i4x = i + 1;}
  if (i4v != 11 || i4x != 2) printf("109-3\n");
  i4x = 11;
#pragma omp atomic capture
  {i4v = i4x; i4x++;}
  if (i4v != 11 || i4x != 12) printf("110\n");
#pragma omp atomic capture
  {i4v = i4x; ++i4x;}
  if (i4v != 12 || i4x != 13) printf("111\n");
#pragma omp atomic capture
  {++i4x; i4v = i4x;}
  if (i4v != 14 || i4x != 14) printf("112\n");
#pragma omp atomic capture
  {i4x++; i4v = i4x;}
  if (i4v != 15 || i4x != 15) printf("113\n");
#pragma omp atomic capture
  {i4v = i4x; i4x--;}
  if (i4v != 15 || i4x != 14) printf("114\n");
#pragma omp atomic capture
  {i4v = i4x; --i4x;}
  if (i4v != 14 || i4x != 13) printf("115\n");
#pragma omp atomic capture
  {--i4x; i4v = i4x;}
  if (i4v != 12 || i4x != 12) printf("116\n");
#pragma omp atomic capture
  {i4x--; i4v = i4x;}
  if (i4v != 11 || i4x != 11) printf("117\n");

  i4x = 2;
#pragma omp atomic capture
  i4v = i4x *= (i + 1);
  if (i4v != 4 || i4x != 4) printf("118\n");
  i4x = 2;
#pragma omp atomic capture
  {i4v = i4x; i4x *= (i + 1);}
  if (i4v != 2 || i4x != 4) printf("119\n");
  i4x = 2;
#pragma omp atomic capture
  {i4x *= (i + 1); i4v = i4x;}
  if (i4v != 4 || i4x != 4) printf("120\n");
  i4x = 2;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x * (i + 1);}
  if (i4v != 2 || i4x != 4) printf("121\n");
  i4x = 2;
#pragma omp atomic capture
  {i4x = i4x * (i + 1); i4v = i4x;}
  if (i4v != 4 || i4x != 4) printf("122\n");

  i4x = 4;
#pragma omp atomic capture
  i4v = i4x /= (i + 1);
  if (i4v != 2 || i4x != 2) printf("123\n");
  i4x = 4;
#pragma omp atomic capture
  {i4v = i4x; i4x /= (i + 1);}
  if (i4v != 4 || i4x != 2) printf("124\n");
  i4x = 4;
#pragma omp atomic capture
  {i4x /= (i + 1); i4v = i4x;}
  if (i4v != 2 || i4x != 2) printf("125\n");
  i4x = 4;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x / (i + 1);}
  if (i4v != 4 || i4x != 2) printf("126\n");
  i4x = 4;
#pragma omp atomic capture
  {i4x = i4x / (i + 1); i4v = i4x;}
  if (i4v != 2 || i4x != 2) printf("127\n");

  i4x = 4;
#pragma omp atomic capture
  i4v = i4x -= (i + 1);
  if (i4v != 2 || i4x != 2) printf("128\n");
  i4x = 4;
#pragma omp atomic capture
  {i4v = i4x; i4x -= (i + 1);}
  if (i4v != 4 || i4x != 2) printf("129\n");
  i4x = 4;
#pragma omp atomic capture
  {i4x -= (i + 1); i4v = i4x;}
  if (i4v != 2 || i4x != 2) printf("130\n");
  i4x = 4;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x - (i + 1);}
  if (i4v != 4 || i4x != 2) printf("131\n");
  i4x = 4;
#pragma omp atomic capture
  {i4x = i4x - (i + 1); i4v = i4x;}
  if (i4v != 2 || i4x != 2) printf("132\n");

  i4x = 7;
#pragma omp atomic capture
  i4v = i4x &= (i + 1);
  if (i4v != 2 || i4x != 2) printf("133\n");
  i4x = 7;
#pragma omp atomic capture
  {i4v = i4x; i4x &= (i + 1);}
  if (i4v != 7 || i4x != 2) printf("134\n");
  i4x = 7;
#pragma omp atomic capture
  {i4x &= (i + 1); i4v = i4x;}
  if (i4v != 2 || i4x != 2) printf("135\n");
  i4x = 7;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x & (i + 1);}
  if (i4v != 7 || i4x != 2) printf("136\n");
  i4x = 7;
#pragma omp atomic capture
  {i4x = i4x & (i + 1); i4v = i4x;}
  if (i4v != 2 || i4x != 2) printf("137\n");

  i4x = 5;
#pragma omp atomic capture
  i4v = i4x |= (i + 1);
  if (i4v != 7 || i4x != 7) printf("138\n");
  i4x = 5;
#pragma omp atomic capture
  {i4v = i4x; i4x |= (i + 1);}
  if (i4v != 5 || i4x != 7) printf("139\n");
  i4x = 5;
#pragma omp atomic capture
  {i4x |= (i + 1); i4v = i4x;}
  if (i4v != 7 || i4x != 7) printf("140\n");
  i4x = 5;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x | (i + 1);}
  if (i4v != 5 || i4x != 7) printf("141\n");
  i4x = 5;
#pragma omp atomic capture
  {i4x = i4x | (i + 1); i4v = i4x;}
  if (i4v != 7 || i4x != 7) printf("142\n");

  i4x = 7;
#pragma omp atomic capture
  i4v = i4x ^= (i + 1);
  if (i4v != 5 || i4x != 5) printf("143\n");
  i4x = 7;
#pragma omp atomic capture
  {i4v = i4x; i4x ^= (i + 1);}
  if (i4v != 7 || i4x != 5) printf("144\n");
  i4x = 7;
#pragma omp atomic capture
  {i4x ^= (i + 1); i4v = i4x;}
  if (i4v != 5 || i4x != 5) printf("145\n");
  i4x = 7;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x ^ (i + 1);}
  if (i4v != 7 || i4x != 5) printf("146\n");
  i4x = 7;
#pragma omp atomic capture
  {i4x = i4x ^ (i + 1); i4v = i4x;}
  if (i4v != 5 || i4x != 5) printf("147\n");

  i4x = 1;
#pragma omp atomic capture
  i4v = i4x <<= (i + 1);
  if (i4v != 4 || i4x != 4) printf("148\n");
  i4x = 1;
#pragma omp atomic capture
  {i4v = i4x; i4x <<= (i + 1);}
  if (i4v != 1 || i4x != 4) printf("149\n");
  i4x = 1;
#pragma omp atomic capture
  {i4x <<= (i + 1); i4v = i4x;}
  if (i4v != 4 || i4x != 4) printf("150\n");
  i4x = 1;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x << (i + 1);}
  if (i4v != 1 || i4x != 4) printf("151\n");
  i4x = 1;
#pragma omp atomic capture
  {i4x = i4x << (i + 1); i4v = i4x;}
  if (i4v != 4 || i4x != 4) printf("152\n");

  i4x = 4;
#pragma omp atomic capture
  i4v = i4x >>= (i + 1);
  if (i4v != 1 || i4x != 1) printf("153\n");
  i4x = 4;
#pragma omp atomic capture
  {i4v = i4x; i4x >>= (i + 1);}
  if (i4v != 4 || i4x != 1) printf("154\n");
  i4x = 4;
#pragma omp atomic capture
  {i4x >>= (i + 1); i4v = i4x;}
  if (i4v != 1 || i4x != 1) printf("155\n");
  i4x = 4;
#pragma omp atomic capture
  {i4v = i4x; i4x = i4x >> (i + 1);}
  if (i4v != 4 || i4x != 1) printf("156\n");
  i4x = 4;
#pragma omp atomic capture
  {i4x = i4x >> (i + 1); i4v = i4x;}
  if (i4v != 1 || i4x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
