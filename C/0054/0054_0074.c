#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  short int          c;
  long  int          d;
  signed char        e;
  signed int         f;
  signed short int   g;
  signed long  int   h;
  unsigned char      i;
  unsigned short int j;
  unsigned long  int k;
    printf("12 START\n");

  a = (char)(unsigned int)0xf0f0f0ff;
  if (a == -1)
   printf("--- 12 (20-01) OK ---\n");
  else {
    printf("*** 12 (20-01) NG ***\n");
    printf("A = %x\n" , a);
  }

#if INT64
  b = (int)(unsigned int)18446744073709551615;
#else
  b = (int)(unsigned int)4294967295;
#endif
  if (b == -1)
    printf("--- 12 (20-02) OK ---\n");
  else {
    printf("*** 12 (20-02) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(unsigned int)0xf000ffff;
  if (c == -1)
    printf("--- 12 (20-03) OK ---\n");
  else {
    printf("*** 12 (20-03) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(unsigned int)5;
  if (d == 5)
    printf("--- 12 (20-04) OK ---\n");
  else {
    printf("*** 12 (20-04) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(unsigned int)0xf0ff;
  if (e == -1)
    printf("--- 12 (20-05) OK ---\n");
  else {
    printf("*** 12 (20-05) NG ***\n");
    printf("E = %x\n" , e);

  }

#if INT64
  f = (signed int)(unsigned int)18446744073709551615;
#else
  f = (signed int)(unsigned int)4294967295;
#endif
  if (f == -1)
    printf("--- 12 (20-06) OK ---\n");
  else {
    printf("*** 12 (20-06) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed short int)(unsigned int)11;
  if (g == 11)
    printf("--- 12 (20-07) OK ---\n");
  else {
    printf("*** 12 (20-07) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (signed long int)(unsigned int)13;
  if (h == 13)
    printf("--- 12 (20-08) OK ---\n");
  else {
    printf("*** 12 (20-08) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned char)(unsigned int)17;
  if (i == 17)
    printf("--- 12 (20-09) OK ---\n");
  else {
    printf("*** 12 (20-09) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(unsigned int)19;
  if (j == 19)
    printf("--- 12 (20-10) OK ---\n");
  else {
    printf("*** 12 (20-10) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(unsigned int)41;
  if (k == 41)
    printf("--- 12 (20-11) OK ---\n");
  else {
    printf("*** 12 (20-11) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("12 END  \n");
}
