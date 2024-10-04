#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  long  int          c;
  signed char        d;
  signed int         e;
  signed short int   f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("05 START\n");

  a = (char)(short int)0x7f11;
  if (a == 0x11)
    printf("--- 05 (07-01) OK ---\n");
  else {
    printf("*** 05 (07-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(short int)0xf222;
  if (a == 0x22)
    printf("--- 05 (07-02) OK ---\n");
  else {
    printf("*** 05 (07-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(short int)0x3333;
  if (b == 0x3333)
    printf("--- 05 (07-03) OK ---\n");
  else {
    printf("*** 05 (07-03) NG ***\n");
    printf("B = %x\n" , b);
  }

  b = (int)(short int)0xff44;
#if INT64
  if (b == 0xffffffffffffff44)
#else
  if (b == 0xffffff44)
#endif
    printf("--- 05 (07-04) OK ---\n");
  else {
    printf("*** 05 (07-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (long int)(short int)32767;
  if (c == 32767)
    printf("--- 05 (07-05) OK ---\n");
  else {
    printf("*** 05 (07-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (long int)(short int)-32767;
  if (c == -32767)
    printf("--- 05 (07-06) OK ---\n");
  else {
    printf("*** 05 (07-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (signed char)(short int)7;
  if (d == 7)
    printf("--- 05 (07-07) OK ---\n");
  else {
    printf("*** 05 (07-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (signed char)(short int)0xfffe;
  if (d == -2)
    printf("--- 05 (07-08) OK ---\n");
  else {
    printf("*** 05 (07-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed int)(short int)0x7fff;
  if (e == 0x7fff)
    printf("--- 05 (07-09) OK ---\n");
  else {
    printf("*** 05 (07-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed int)(short int)0xffff;
  if (e == -1)
    printf("--- 05 (07-10) OK ---\n");
  else {
    printf("*** 05 (07-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed short int)(short int)32767;
  if (f == 32767)
    printf("--- 05 (07-11) OK ---\n");
  else {
    printf("*** 05 (07-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed short int)(short int)-12345;
  if (f == -12345)
    printf("--- 05 (07-12) OK ---\n");
  else {
    printf("*** 05 (07-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(short int)0x7fff;
  if (g == 0x7fff)
    printf("--- 05 (07-13) OK ---\n");
  else {
    printf("*** 05 (07-13) NG ***\n");
    printf("G = %x\n" , g);
  }

  g = (signed long int)(short int)0xffff;
  if (g == -1)
    printf("--- 05 (07-14) OK ---\n");
  else {
    printf("*** 05 (07-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(short int)0x11ff;
  if (h == 255)
    printf("--- 05 (07-15) OK ---\n");
  else {
    printf("*** 05 (07-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(short int)-1;
  if (h == 255)
    printf("--- 05 (07-16) OK ---\n");
  else {
    printf("*** 05 (07-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(short int)0x7fff;
  if (i == 0x7fff)
    printf("--- 05 (07-17) OK ---\n");
  else {
    printf("*** 05 (07-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(short int)-1;
#if INT64
  if (i == 0xffffffffffffffff)
#else
  if (i == 0xffffffff)
#endif
    printf("--- 05 (07-18) OK ---\n");
  else {
    printf("*** 05 (07-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(short int)0x7fff;
  if (j == 0x7fff)
    printf("--- 05 (07-19) OK ---\n");
  else {
    printf("*** 05 (07-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(short int)-1;
  if (j == 65535)
    printf("--- 05 (07-20) OK ---\n");
  else {
    printf("*** 05 (07-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(short int)81;
  if (k == 81)
    printf("--- 05 (08-01) OK ---\n");
  else {
    printf("*** 05 (08-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(short int)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 05 (08-02) OK ---\n");
  else {
    printf("*** 05 (08-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("05 END  \n");
}
