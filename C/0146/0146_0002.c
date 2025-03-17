#include <stdio.h>
int main() {
  struct t1 {
    int               i4v, i4x;
    int i;
  };
  struct t1 t;
  t.i4x = 1;
  t.i = 1;

#pragma omp atomic capture
  t.i4v = t.i4x++;
  if (t.i4v != 1 || t.i4x != 2) printf("101\n");
#pragma omp atomic capture
  t.i4v = t.i4x--;
  if (t.i4v != 2 || t.i4x != 1) printf("102\n");
#pragma omp atomic capture
  t.i4v = ++t.i4x;
  if (t.i4v != 2 || t.i4x != 2) printf("103\n");
#pragma omp atomic capture
  t.i4v = --t.i4x;
  if (t.i4v != 1 || t.i4x != 1) printf("104\n");
#pragma omp atomic capture
  t.i4v = t.i4x += (t.i + 1);
  if (t.i4v != 3 || t.i4x != 3) printf("105\n");

#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x += (t.i + 1);}
  if (t.i4v != 3 || t.i4x != 5) printf("106\n");
#pragma omp atomic capture
  {t.i4x += (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 7 || t.i4x != 7) printf("107\n");
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x + (t.i + 1);}
  if (t.i4v != 7 || t.i4x != 9) printf("108\n");
#pragma omp atomic capture
  {t.i4x = t.i4x + (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 11 || t.i4x != 11) printf("109\n");
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x++;}
  if (t.i4v != 11 || t.i4x != 12) printf("110\n");
#pragma omp atomic capture
  {t.i4v = t.i4x; ++t.i4x;}
  if (t.i4v != 12 || t.i4x != 13) printf("111\n");
#pragma omp atomic capture
  {++t.i4x; t.i4v = t.i4x;}
  if (t.i4v != 14 || t.i4x != 14) printf("112\n");
#pragma omp atomic capture
  {t.i4x++; t.i4v = t.i4x;}
  if (t.i4v != 15 || t.i4x != 15) printf("113\n");
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x--;}
  if (t.i4v != 15 || t.i4x != 14) printf("114\n");
#pragma omp atomic capture
  {t.i4v = t.i4x; --t.i4x;}
  if (t.i4v != 14 || t.i4x != 13) printf("115\n");
#pragma omp atomic capture
  {--t.i4x; t.i4v = t.i4x;}
  if (t.i4v != 12 || t.i4x != 12) printf("116\n");
#pragma omp atomic capture
  {t.i4x--; t.i4v = t.i4x;}
  if (t.i4v != 11 || t.i4x != 11) printf("117\n");

  t.i4x = 2;
#pragma omp atomic capture
  t.i4v = t.i4x *= (t.i + 1);
  if (t.i4v != 4 || t.i4x != 4) printf("118\n");
  t.i4x = 2;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x *= (t.i + 1);}
  if (t.i4v != 2 || t.i4x != 4) printf("119\n");
  t.i4x = 2;
#pragma omp atomic capture
  {t.i4x *= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 4 || t.i4x != 4) printf("120\n");
  t.i4x = 2;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x * (t.i + 1);}
  if (t.i4v != 2 || t.i4x != 4) printf("121\n");
  t.i4x = 2;
#pragma omp atomic capture
  {t.i4x = t.i4x * (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 4 || t.i4x != 4) printf("122\n");

  t.i4x = 4;
#pragma omp atomic capture
  t.i4v = t.i4x /= (t.i + 1);
  if (t.i4v != 2 || t.i4x != 2) printf("123\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x /= (t.i + 1);}
  if (t.i4v != 4 || t.i4x != 2) printf("124\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4x /= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 2 || t.i4x != 2) printf("125\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x / (t.i + 1);}
  if (t.i4v != 4 || t.i4x != 2) printf("126\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4x = t.i4x / (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 2 || t.i4x != 2) printf("127\n");

  t.i4x = 4;
#pragma omp atomic capture
  t.i4v = t.i4x -= (t.i + 1);
  if (t.i4v != 2 || t.i4x != 2) printf("128\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x -= (t.i + 1);}
  if (t.i4v != 4 || t.i4x != 2) printf("129\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4x -= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 2 || t.i4x != 2) printf("130\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x - (t.i + 1);}
  if (t.i4v != 4 || t.i4x != 2) printf("131\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4x = t.i4x - (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 2 || t.i4x != 2) printf("132\n");

  t.i4x = 7;
#pragma omp atomic capture
  t.i4v = t.i4x &= (t.i + 1);
  if (t.i4v != 2 || t.i4x != 2) printf("133\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x &= (t.i + 1);}
  if (t.i4v != 7 || t.i4x != 2) printf("134\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4x &= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 2 || t.i4x != 2) printf("135\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x & (t.i + 1);}
  if (t.i4v != 7 || t.i4x != 2) printf("136\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4x = t.i4x & (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 2 || t.i4x != 2) printf("137\n");

  t.i4x = 5;
#pragma omp atomic capture
  t.i4v = t.i4x |= (t.i + 1);
  if (t.i4v != 7 || t.i4x != 7) printf("138\n");
  t.i4x = 5;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x |= (t.i + 1);}
  if (t.i4v != 5 || t.i4x != 7) printf("139\n");
  t.i4x = 5;
#pragma omp atomic capture
  {t.i4x |= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 7 || t.i4x != 7) printf("140\n");
  t.i4x = 5;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x | (t.i + 1);}
  if (t.i4v != 5 || t.i4x != 7) printf("141\n");
  t.i4x = 5;
#pragma omp atomic capture
  {t.i4x = t.i4x | (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 7 || t.i4x != 7) printf("142\n");

  t.i4x = 7;
#pragma omp atomic capture
  t.i4v = t.i4x ^= (t.i + 1);
  if (t.i4v != 5 || t.i4x != 5) printf("143\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x ^= (t.i + 1);}
  if (t.i4v != 7 || t.i4x != 5) printf("144\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4x ^= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 5 || t.i4x != 5) printf("145\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x ^ (t.i + 1);}
  if (t.i4v != 7 || t.i4x != 5) printf("146\n");
  t.i4x = 7;
#pragma omp atomic capture
  {t.i4x = t.i4x ^ (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 5 || t.i4x != 5) printf("147\n");

  t.i4x = 1;
#pragma omp atomic capture
  t.i4v = t.i4x <<= (t.i + 1);
  if (t.i4v != 4 || t.i4x != 4) printf("148\n");
  t.i4x = 1;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x <<= (t.i + 1);}
  if (t.i4v != 1 || t.i4x != 4) printf("149\n");
  t.i4x = 1;
#pragma omp atomic capture
  {t.i4x <<= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 4 || t.i4x != 4) printf("150\n");
  t.i4x = 1;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x << (t.i + 1);}
  if (t.i4v != 1 || t.i4x != 4) printf("151\n");
  t.i4x = 1;
#pragma omp atomic capture
  {t.i4x = t.i4x << (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 4 || t.i4x != 4) printf("152\n");

  t.i4x = 4;
#pragma omp atomic capture
  t.i4v = t.i4x >>= (t.i + 1);
  if (t.i4v != 1 || t.i4x != 1) printf("153\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x >>= (t.i + 1);}
  if (t.i4v != 4 || t.i4x != 1) printf("154\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4x >>= (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 1 || t.i4x != 1) printf("155\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4v = t.i4x; t.i4x = t.i4x >> (t.i + 1);}
  if (t.i4v != 4 || t.i4x != 1) printf("156\n");
  t.i4x = 4;
#pragma omp atomic capture
  {t.i4x = t.i4x >> (t.i + 1); t.i4v = t.i4x;}
  if (t.i4v != 1 || t.i4x != 1) printf("157\n");

  printf("pass\n");
  return 0;
}
