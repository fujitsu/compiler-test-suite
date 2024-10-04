#include<stdio.h>
 

int main() {
  char               a;
  short int          b;
  long  int          c;
  signed char        d;
  signed int         e;
  signed short int   f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("04 START\n");

  a = (char)(int)0x12345678;
  if (a == 0x78)
    printf("--- 04 (05-01) OK ---\n");
  else {
    printf("*** 04 (05-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(int)0xf01234ff;
  if (a == -1)
    printf("--- 04 (05-02) OK ---\n");
  else {
    printf("*** 04 (05-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (short int)(int)0x3456fff0;
  if (b == -16)
    printf("--- 04 (05-03) OK ---\n");
  else {
    printf("*** 04 (05-03) NG ***\n");
    printf("B = %x\n" , b);
  }

  b = (short int)(int)0xf0000010;
  if (b == 16)
    printf("--- 04 (05-04) OK ---\n");
  else {
    printf("*** 04 (05-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (long int)(int)0x77777777;
  if (c == 0x77777777)
    printf("--- 04 (05-05) OK ---\n");
  else {
    printf("*** 04 (05-05) NG ***\n");
    printf("C = %x\n" , c);
  }

#if INT64
  c = (long int)(int)0xffffffffffffffff;
#else
  c = (long int)(int)0xffffffff;
#endif
  if (c == -1)
    printf("--- 04 (05-06) OK ---\n");
  else {
    printf("*** 04 (05-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (signed char)(int)7;
  if (d == 7)
    printf("--- 04 (05-07) OK ---\n");
  else {
    printf("*** 04 (05-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (signed char)(int)0xfffffffe;
  if (d == -2)
    printf("--- 04 (05-08) OK ---\n");
  else {
    printf("*** 04 (05-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed int)(int)2147483647;
  if (e == 2147483647)
    printf("--- 04 (05-09) OK ---\n");
  else {
    printf("*** 04 (05-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed int)(int)-2147483647;
  if (e == -2147483647)
    printf("--- 04 (05-10) OK ---\n");
  else {
    printf("*** 04 (05-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed short int)(int)0x7fffffff;
  if (f == -1)
    printf("--- 04 (05-11) OK ---\n");
  else {
    printf("*** 04 (05-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed short int)(int)0xffff000c;
  if (f == 12)
    printf("--- 04 (05-12) OK ---\n");
  else {
    printf("*** 04 (05-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(int)0x7fffffff;
  if (g == 2147483647)
    printf("--- 04 (05-13) OK ---\n");
  else {
    printf("*** 04 (05-13) NG ***\n");
    printf("G = %x\n" , g);
  }

#if INT64
  g = (signed long int)(int)0xffffffffffffffff;
#else
  g = (signed long int)(int)0xffffffff;
#endif
  if (g == -1)
    printf("--- 04 (05-14) OK ---\n");
  else {
    printf("*** 04 (05-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(int)0x7fffffff;
  if (h == 255)
    printf("--- 04 (05-15) OK ---\n");
  else {
    printf("*** 04 (05-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(int)-1;
  if (h == 255)
    printf("--- 04 (05-16) OK ---\n");
  else {
    printf("*** 04 (05-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(int)2147483647;
  if (i == 2147483647)
    printf("--- 04 (05-17) OK ---\n");
  else {
    printf("*** 04 (05-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(int)-1;
#if INT64
  if (i == 18446744073709551615)
#else
  if (i == 4294967295)
#endif
    printf("--- 04 (05-18) OK ---\n");
  else {
    printf("*** 04 (05-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(int)0x1111ffff;
  if (j == 65535)
    printf("--- 04 (05-19) OK ---\n");
  else {
    printf("*** 04 (05-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(int)-1;
  if (j == 65535)
    printf("--- 04 (05-20) OK ---\n");
  else {
    printf("*** 04 (05-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(int)41;
  if (k == 41)
    printf("--- 04 (06-01) OK ---\n");
  else {
    printf("*** 04 (06-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(int)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 04 (06-02) OK ---\n");
  else {
    printf("*** 04 (06-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("04 END  \n");
}
