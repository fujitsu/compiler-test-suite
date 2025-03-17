
#include <stdio.h>
int main() {
  unsigned short u2v, u2x;
  int i;
  u2x = 1;
  i = 1;

#pragma omp atomic capture
  u2v = u2x++;
  if (u2v != 1 || u2x != 2) printf("101\n");
#pragma omp atomic capture
  u2v = u2x--;
  if (u2v != 2 || u2x != 1) printf("102\n");
#pragma omp atomic capture
  u2v = ++u2x;
  if (u2v != 2 || u2x != 2) printf("103\n");
#pragma omp atomic capture
  u2v = --u2x;
  if (u2v != 1 || u2x != 1) printf("104\n");
#pragma omp atomic capture
  u2v = u2x += (i + 1);
  if (u2v != 3 || u2x != 3) printf("105\n");

#pragma omp atomic capture
  {u2v = u2x; u2x += (i + 1);}
  if (u2v != 3 || u2x != 5) printf("106\n");
#pragma omp atomic capture
  {u2x += (i + 1); u2v = u2x;}
  if (u2v != 7 || u2x != 7) printf("107\n");
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x + (i + 1);}
  if (u2v != 7 || u2x != 9) printf("108\n");
#pragma omp atomic capture
  {u2x = u2x + (i + 1); u2v = u2x;}
  if (u2v != 11 || u2x != 11) printf("109\n");
#pragma omp atomic capture
  {u2v = u2x; u2x++;}
  if (u2v != 11 || u2x != 12) printf("110\n");
#pragma omp atomic capture
  {u2v = u2x; ++u2x;}
  if (u2v != 12 || u2x != 13) printf("111\n");
#pragma omp atomic capture
  {++u2x; u2v = u2x;}
  if (u2v != 14 || u2x != 14) printf("112\n");
#pragma omp atomic capture
  {u2x++; u2v = u2x;}
  if (u2v != 15 || u2x != 15) printf("113\n");
#pragma omp atomic capture
  {u2v = u2x; u2x--;}
  if (u2v != 15 || u2x != 14) printf("114\n");
#pragma omp atomic capture
  {u2v = u2x; --u2x;}
  if (u2v != 14 || u2x != 13) printf("115\n");
#pragma omp atomic capture
  {--u2x; u2v = u2x;}
  if (u2v != 12 || u2x != 12) printf("116\n");
#pragma omp atomic capture
  {u2x--; u2v = u2x;}
  if (u2v != 11 || u2x != 11) printf("117\n");

  
  u2x = 2;
#pragma omp atomic capture
  u2v = u2x *= (i + 1);
  if (u2v != 4 || u2x != 4) printf("118\n");
  u2x = 2;
#pragma omp atomic capture
  {u2v = u2x; u2x *= (i + 1);}
  if (u2v != 2 || u2x != 4) printf("119\n");
  u2x = 2;
#pragma omp atomic capture
  {u2x *= (i + 1); u2v = u2x;}
  if (u2v != 4 || u2x != 4) printf("120\n");
  u2x = 2;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x * (i + 1);}
  if (u2v != 2 || u2x != 4) printf("121\n");
  u2x = 2;
#pragma omp atomic capture
  {u2x = u2x * (i + 1); u2v = u2x;}
  if (u2v != 4 || u2x != 4) printf("122\n");

  
  u2x = 4;
#pragma omp atomic capture
  u2v = u2x /= (i + 1);
  if (u2v != 2 || u2x != 2) printf("123\n");
  u2x = 4;
#pragma omp atomic capture
  {u2v = u2x; u2x /= (i + 1);}
  if (u2v != 4 || u2x != 2) printf("124\n");
  u2x = 4;
#pragma omp atomic capture
  {u2x /= (i + 1); u2v = u2x;}
  if (u2v != 2 || u2x != 2) printf("125\n");
  u2x = 4;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x / (i + 1);}
  if (u2v != 4 || u2x != 2) printf("126\n");
  u2x = 4;
#pragma omp atomic capture
  {u2x = u2x / (i + 1); u2v = u2x;}
  if (u2v != 2 || u2x != 2) printf("127\n");

  
  u2x = 4;
#pragma omp atomic capture
  u2v = u2x -= (i + 1);
  if (u2v != 2 || u2x != 2) printf("128\n");
  u2x = 4;
#pragma omp atomic capture
  {u2v = u2x; u2x -= (i + 1);}
  if (u2v != 4 || u2x != 2) printf("129\n");
  u2x = 4;
#pragma omp atomic capture
  {u2x -= (i + 1); u2v = u2x;}
  if (u2v != 2 || u2x != 2) printf("130\n");
  u2x = 4;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x - (i + 1);}
  if (u2v != 4 || u2x != 2) printf("131\n");
  u2x = 4;
#pragma omp atomic capture
  {u2x = u2x - (i + 1); u2v = u2x;}
  if (u2v != 2 || u2x != 2) printf("132\n");

  
  u2x = 7;
#pragma omp atomic capture
  u2v = u2x &= (i + 1);
  if (u2v != 2 || u2x != 2) printf("133\n");
  u2x = 7;
#pragma omp atomic capture
  {u2v = u2x; u2x &= (i + 1);}
  if (u2v != 7 || u2x != 2) printf("134\n");
  u2x = 7;
#pragma omp atomic capture
  {u2x &= (i + 1); u2v = u2x;}
  if (u2v != 2 || u2x != 2) printf("135\n");
  u2x = 7;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x & (i + 1);}
  if (u2v != 7 || u2x != 2) printf("136\n");
  u2x = 7;
#pragma omp atomic capture
  {u2x = u2x & (i + 1); u2v = u2x;}
  if (u2v != 2 || u2x != 2) printf("137\n");

  
  u2x = 5;
#pragma omp atomic capture
  u2v = u2x |= (i + 1);
  if (u2v != 7 || u2x != 7) printf("138\n");
  u2x = 5;
#pragma omp atomic capture
  {u2v = u2x; u2x |= (i + 1);}
  if (u2v != 5 || u2x != 7) printf("139\n");
  u2x = 5;
#pragma omp atomic capture
  {u2x |= (i + 1); u2v = u2x;}
  if (u2v != 7 || u2x != 7) printf("140\n");
  u2x = 5;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x | (i + 1);}
  if (u2v != 5 || u2x != 7) printf("141\n");
  u2x = 5;
#pragma omp atomic capture
  {u2x = u2x | (i + 1); u2v = u2x;}
  if (u2v != 7 || u2x != 7) printf("142\n");

  
  u2x = 7;
#pragma omp atomic capture
  u2v = u2x ^= (i + 1);
  if (u2v != 5 || u2x != 5) printf("143\n");
  u2x = 7;
#pragma omp atomic capture
  {u2v = u2x; u2x ^= (i + 1);}
  if (u2v != 7 || u2x != 5) printf("144\n");
  u2x = 7;
#pragma omp atomic capture
  {u2x ^= (i + 1); u2v = u2x;}
  if (u2v != 5 || u2x != 5) printf("145\n");
  u2x = 7;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x ^ (i + 1);}
  if (u2v != 7 || u2x != 5) printf("146\n");
  u2x = 7;
#pragma omp atomic capture
  {u2x = u2x ^ (i + 1); u2v = u2x;}
  if (u2v != 5 || u2x != 5) printf("147\n");

  
  u2x = 1;
#pragma omp atomic capture
  u2v = u2x <<= (i + 1);
  if (u2v != 4 || u2x != 4) printf("148\n");
  u2x = 1;
#pragma omp atomic capture
  {u2v = u2x; u2x <<= (i + 1);}
  if (u2v != 1 || u2x != 4) printf("149\n");
  u2x = 1;
#pragma omp atomic capture
  {u2x <<= (i + 1); u2v = u2x;}
  if (u2v != 4 || u2x != 4) printf("150\n");
  u2x = 1;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x << (i + 1);}
  if (u2v != 1 || u2x != 4) printf("151\n");
  u2x = 1;
#pragma omp atomic capture
  {u2x = u2x << (i + 1); u2v = u2x;}
  if (u2v != 4 || u2x != 4) printf("152\n");

  
  u2x = 4;
#pragma omp atomic capture
  u2v = u2x >>= (i + 1);
  if (u2v != 1 || u2x != 1) printf("153\n");
  u2x = 4;
#pragma omp atomic capture
  {u2v = u2x; u2x >>= (i + 1);}
  if (u2v != 4 || u2x != 1) printf("154\n");
  u2x = 4;
#pragma omp atomic capture
  {u2x >>= (i + 1); u2v = u2x;}
  if (u2v != 1 || u2x != 1) printf("155\n");
  u2x = 4;
#pragma omp atomic capture
  {u2v = u2x; u2x = u2x >> (i + 1);}
  if (u2v != 4 || u2x != 1) printf("156\n");
  u2x = 4;
#pragma omp atomic capture
  {u2x = u2x >> (i + 1); u2v = u2x;}
  if (u2v != 1 || u2x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
