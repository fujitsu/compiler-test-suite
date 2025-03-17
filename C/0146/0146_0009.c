
#include <stdio.h>
int main() {
  unsigned int u4v, u4x;
  int i;
  u4x = 1;
  i = 1;

#pragma omp atomic capture
  u4v = u4x++;
  if (u4v != 1 || u4x != 2) printf("101\n");
#pragma omp atomic capture
  u4v = u4x--;
  if (u4v != 2 || u4x != 1) printf("102\n");
#pragma omp atomic capture
  u4v = ++u4x;
  if (u4v != 2 || u4x != 2) printf("103\n");
#pragma omp atomic capture
  u4v = --u4x;
  if (u4v != 1 || u4x != 1) printf("104\n");
#pragma omp atomic capture
  u4v = u4x += (i + 1);
  if (u4v != 3 || u4x != 3) printf("105\n");

#pragma omp atomic capture
  {u4v = u4x; u4x += (i + 1);}
  if (u4v != 3 || u4x != 5) printf("106\n");
#pragma omp atomic capture
  {u4x += (i + 1); u4v = u4x;}
  if (u4v != 7 || u4x != 7) printf("107\n");
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x + (i + 1);}
  if (u4v != 7 || u4x != 9) printf("108\n");
#pragma omp atomic capture
  {u4x = u4x + (i + 1); u4v = u4x;}
  if (u4v != 11 || u4x != 11) printf("109\n");
#pragma omp atomic capture
  {u4v = u4x; u4x++;}
  if (u4v != 11 || u4x != 12) printf("110\n");
#pragma omp atomic capture
  {u4v = u4x; ++u4x;}
  if (u4v != 12 || u4x != 13) printf("111\n");
#pragma omp atomic capture
  {++u4x; u4v = u4x;}
  if (u4v != 14 || u4x != 14) printf("112\n");
#pragma omp atomic capture
  {u4x++; u4v = u4x;}
  if (u4v != 15 || u4x != 15) printf("113\n");
#pragma omp atomic capture
  {u4v = u4x; u4x--;}
  if (u4v != 15 || u4x != 14) printf("114\n");
#pragma omp atomic capture
  {u4v = u4x; --u4x;}
  if (u4v != 14 || u4x != 13) printf("115\n");
#pragma omp atomic capture
  {--u4x; u4v = u4x;}
  if (u4v != 12 || u4x != 12) printf("116\n");
#pragma omp atomic capture
  {u4x--; u4v = u4x;}
  if (u4v != 11 || u4x != 11) printf("117\n");

  
  u4x = 2;
#pragma omp atomic capture
  u4v = u4x *= (i + 1);
  if (u4v != 4 || u4x != 4) printf("118\n");
  u4x = 2;
#pragma omp atomic capture
  {u4v = u4x; u4x *= (i + 1);}
  if (u4v != 2 || u4x != 4) printf("119\n");
  u4x = 2;
#pragma omp atomic capture
  {u4x *= (i + 1); u4v = u4x;}
  if (u4v != 4 || u4x != 4) printf("120\n");
  u4x = 2;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x * (i + 1);}
  if (u4v != 2 || u4x != 4) printf("121\n");
  u4x = 2;
#pragma omp atomic capture
  {u4x = u4x * (i + 1); u4v = u4x;}
  if (u4v != 4 || u4x != 4) printf("122\n");

  
  u4x = 4;
#pragma omp atomic capture
  u4v = u4x /= (i + 1);
  if (u4v != 2 || u4x != 2) printf("123\n");
  u4x = 4;
#pragma omp atomic capture
  {u4v = u4x; u4x /= (i + 1);}
  if (u4v != 4 || u4x != 2) printf("124\n");
  u4x = 4;
#pragma omp atomic capture
  {u4x /= (i + 1); u4v = u4x;}
  if (u4v != 2 || u4x != 2) printf("125\n");
  u4x = 4;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x / (i + 1);}
  if (u4v != 4 || u4x != 2) printf("126\n");
  u4x = 4;
#pragma omp atomic capture
  {u4x = u4x / (i + 1); u4v = u4x;}
  if (u4v != 2 || u4x != 2) printf("127\n");

  
  u4x = 4;
#pragma omp atomic capture
  u4v = u4x -= (i + 1);
  if (u4v != 2 || u4x != 2) printf("128\n");
  u4x = 4;
#pragma omp atomic capture
  {u4v = u4x; u4x -= (i + 1);}
  if (u4v != 4 || u4x != 2) printf("129\n");
  u4x = 4;
#pragma omp atomic capture
  {u4x -= (i + 1); u4v = u4x;}
  if (u4v != 2 || u4x != 2) printf("130\n");
  u4x = 4;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x - (i + 1);}
  if (u4v != 4 || u4x != 2) printf("131\n");
  u4x = 4;
#pragma omp atomic capture
  {u4x = u4x - (i + 1); u4v = u4x;}
  if (u4v != 2 || u4x != 2) printf("132\n");

  
  u4x = 7;
#pragma omp atomic capture
  u4v = u4x &= (i + 1);
  if (u4v != 2 || u4x != 2) printf("133\n");
  u4x = 7;
#pragma omp atomic capture
  {u4v = u4x; u4x &= (i + 1);}
  if (u4v != 7 || u4x != 2) printf("134\n");
  u4x = 7;
#pragma omp atomic capture
  {u4x &= (i + 1); u4v = u4x;}
  if (u4v != 2 || u4x != 2) printf("135\n");
  u4x = 7;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x & (i + 1);}
  if (u4v != 7 || u4x != 2) printf("136\n");
  u4x = 7;
#pragma omp atomic capture
  {u4x = u4x & (i + 1); u4v = u4x;}
  if (u4v != 2 || u4x != 2) printf("137\n");

  
  u4x = 5;
#pragma omp atomic capture
  u4v = u4x |= (i + 1);
  if (u4v != 7 || u4x != 7) printf("138\n");
  u4x = 5;
#pragma omp atomic capture
  {u4v = u4x; u4x |= (i + 1);}
  if (u4v != 5 || u4x != 7) printf("139\n");
  u4x = 5;
#pragma omp atomic capture
  {u4x |= (i + 1); u4v = u4x;}
  if (u4v != 7 || u4x != 7) printf("140\n");
  u4x = 5;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x | (i + 1);}
  if (u4v != 5 || u4x != 7) printf("141\n");
  u4x = 5;
#pragma omp atomic capture
  {u4x = u4x | (i + 1); u4v = u4x;}
  if (u4v != 7 || u4x != 7) printf("142\n");

  
  u4x = 7;
#pragma omp atomic capture
  u4v = u4x ^= (i + 1);
  if (u4v != 5 || u4x != 5) printf("143\n");
  u4x = 7;
#pragma omp atomic capture
  {u4v = u4x; u4x ^= (i + 1);}
  if (u4v != 7 || u4x != 5) printf("144\n");
  u4x = 7;
#pragma omp atomic capture
  {u4x ^= (i + 1); u4v = u4x;}
  if (u4v != 5 || u4x != 5) printf("145\n");
  u4x = 7;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x ^ (i + 1);}
  if (u4v != 7 || u4x != 5) printf("146\n");
  u4x = 7;
#pragma omp atomic capture
  {u4x = u4x ^ (i + 1); u4v = u4x;}
  if (u4v != 5 || u4x != 5) printf("147\n");

  
  u4x = 1;
#pragma omp atomic capture
  u4v = u4x <<= (i + 1);
  if (u4v != 4 || u4x != 4) printf("148\n");
  u4x = 1;
#pragma omp atomic capture
  {u4v = u4x; u4x <<= (i + 1);}
  if (u4v != 1 || u4x != 4) printf("149\n");
  u4x = 1;
#pragma omp atomic capture
  {u4x <<= (i + 1); u4v = u4x;}
  if (u4v != 4 || u4x != 4) printf("150\n");
  u4x = 1;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x << (i + 1);}
  if (u4v != 1 || u4x != 4) printf("151\n");
  u4x = 1;
#pragma omp atomic capture
  {u4x = u4x << (i + 1); u4v = u4x;}
  if (u4v != 4 || u4x != 4) printf("152\n");

  
  u4x = 4;
#pragma omp atomic capture
  u4v = u4x >>= (i + 1);
  if (u4v != 1 || u4x != 1) printf("153\n");
  u4x = 4;
#pragma omp atomic capture
  {u4v = u4x; u4x >>= (i + 1);}
  if (u4v != 4 || u4x != 1) printf("154\n");
  u4x = 4;
#pragma omp atomic capture
  {u4x >>= (i + 1); u4v = u4x;}
  if (u4v != 1 || u4x != 1) printf("155\n");
  u4x = 4;
#pragma omp atomic capture
  {u4v = u4x; u4x = u4x >> (i + 1);}
  if (u4v != 4 || u4x != 1) printf("156\n");
  u4x = 4;
#pragma omp atomic capture
  {u4x = u4x >> (i + 1); u4v = u4x;}
  if (u4v != 1 || u4x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
