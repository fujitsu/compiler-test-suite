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
  unsigned int       j;
  unsigned short int k;
    printf("14 START\n");

  a = (char)(unsigned long int)0xf0f0f0ff;
  if (a == -1)
    printf("--- 14 (22-01) OK ---\n");
  else {
    printf("*** 14 (22-01) NG ***\n");
    printf("A = %x\n" , a);
  }

#if INT64
  b = (int)(unsigned long int)18446744073709551615;
#else
  b = (int)(unsigned long int)4294967295;
#endif
  if (b == -1)
    printf("--- 14 (22-02) OK ---\n");
  else {
    printf("*** 14 (22-02) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(unsigned long int)0xf000ffff;
  if (c == -1)
    printf("--- 14 (22-03) OK ---\n");
  else {
    printf("*** 14 (22-03) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(unsigned long int)5;
  if (d == 5)
    printf("--- 14 (22-04) OK ---\n");
  else {
    printf("*** 14 (22-04) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(unsigned long int)0xf0ff;
  if (e == -1)
    printf("--- 14 (22-05) OK ---\n");
  else {
    printf("*** 14 (22-05) NG ***\n");
    printf("E = %x\n" , e);

  }

#if INT64
  f = (signed int)(unsigned long int)18446744073709551615;
#else
  f = (signed int)(unsigned long int)4294967295;
#endif
  if (f == -1)
    printf("--- 14 (22-06) OK ---\n");
  else {
    printf("*** 14 (22-06) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed short int)(unsigned long int)11;
  if (g == 11)
    printf("--- 14 (22-07) OK ---\n");
  else {
    printf("*** 14 (22-07) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (signed long int)(unsigned long int)13;
  if (h == 13)
    printf("--- 14 (22-08) OK ---\n");
  else {
    printf("*** 14 (22-08) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned char)(unsigned long int)17;
  if (i == 17)
    printf("--- 14 (22-09) OK ---\n");
  else {
    printf("*** 14 (22-09) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned int)(unsigned long int)41;
  if (j == 41)
    printf("--- 14 (22-10) OK ---\n");
  else {
    printf("*** 14 (22-10) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned short int)(unsigned long int)19;
  if (k == 19)
    printf("--- 14 (22-11) OK ---\n");
  else {
    printf("*** 14 (22-11) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("14 END  \n");
}
