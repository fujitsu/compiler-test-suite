#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  short int          c;
  signed char        d;
  signed int         e;
  signed short int   f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("06 START\n");

  a = (char)(long int)0x12345678;
  if (a == 0x78)
    printf("--- 06 (09-01) OK ---\n");
  else {
    printf("*** 06 (09-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(long int)0xf01234ff;
  if (a == -1)
    printf("--- 06 (09-02) OK ---\n");
  else {
    printf("*** 06 (09-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(long int)0x3456fff0;
  if (b == 0x3456fff0)
    printf("--- 06 (09-03) OK ---\n");
  else {
    printf("*** 06 (09-03) NG ***\n");
    printf("B = %x\n" , b);
  }

#if INT64
  b = (int)(long int)0xffffffffffffffff;
#else
  b = (int)(long int)0xffffffff;
#endif
  if (b == -1)
    printf("--- 06 (09-04) OK ---\n");
  else {
    printf("*** 06 (09-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(long int)0x77777777;
  if (c == 0x7777)
    printf("--- 06 (09-05) OK ---\n");
  else {
    printf("*** 06 (09-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (short int)(long int)0xfffffff0;
  if (c == -16)
    printf("--- 06 (09-06) OK ---\n");
  else {
    printf("*** 06 (09-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (signed char)(long int)7;
  if (d == 7)
    printf("--- 06 (09-07) OK ---\n");
  else {
    printf("*** 06 (09-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (signed char)(long int)0xfffffffe;
  if (d == -2)
    printf("--- 06 (09-08) OK ---\n");
  else {
    printf("*** 06 (09-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed int)(long int)2147483647;
  if (e == 2147483647)
    printf("--- 06 (09-09) OK ---\n");
  else {
    printf("*** 06 (09-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed int)(long int)-2147483647;
  if (e == -2147483647)
    printf("--- 06 (09-10) OK ---\n");
  else {
    printf("*** 06 (09-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed short int)(long int)0x7fffffff;
  if (f == -1)
    printf("--- 06 (09-11) OK ---\n");
  else {
    printf("*** 06 (09-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed short int)(long int)0xffff000c;
  if (f == 12)
    printf("--- 06 (09-12) OK ---\n");
  else {
    printf("*** 06 (09-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(long int)0x7fffffff;
  if (g == 2147483647)
    printf("--- 06 (09-13) OK ---\n");
  else {
    printf("*** 06 (09-13) NG ***\n");
    printf("G = %x\n" , g);
  }

#if INT64 || LONG64  || __x86_64__ || __aarch64__
  g = (signed long int)(long int)0xffffffffffffffff;
#else
  g = (signed long int)(long int)0xffffffff;
#endif
  if (g == -1)
    printf("--- 06 (09-14) OK ---\n");
  else {
    printf("*** 06 (09-14) NG ***\n");
    printf("G = %x\n" , g);
  }

#if INT64
  h = (unsigned char)(long int)0x7fffffffffffffff;
#else
  h = (unsigned char)(long int)0x7fffffff;
#endif
  if (h == 255)
    printf("--- 06 (09-15) OK ---\n");
  else {
    printf("*** 06 (09-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(long int)-1;
  if (h == 255)
    printf("--- 06 (09-16) OK ---\n");
  else {
    printf("*** 06 (09-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(long int)2147483647;
  if (i == 2147483647)
    printf("--- 06 (09-17) OK ---\n");
  else {
    printf("*** 06 (09-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(long int)-1;
#if INT64
  if (i == 18446744073709551615)
#else
  if (i == 4294967295)
#endif
    printf("--- 06 (09-18) OK ---\n");
  else {
    printf("*** 06 (09-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(long int)0x1111ffff;
  if (j == 65535)
    printf("--- 06 (09-19) OK ---\n");
  else {
    printf("*** 06 (09-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(long int)-1;
  if (j == 65535)
    printf("--- 06 (09-20) OK ---\n");
  else {
    printf("*** 06 (09-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(long int)41;
  if (k == 41)
    printf("--- 06 (10-01) OK ---\n");
  else {
    printf("*** 06 (10-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(long int)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 06 (10-02) OK ---\n");
  else {
    printf("*** 06 (10-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("06 END  \n");
}
