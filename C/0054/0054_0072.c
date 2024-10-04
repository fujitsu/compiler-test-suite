#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  short int          c;
  long  int          d;
  signed char        e;
  signed int         f;
  signed short int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("10 START\n");

  a = (char)(signed long int)0x7fffffff;
  if (a == -1)
    printf("--- 10 (17-01) OK ---\n");
  else {
    printf("*** 10 (17-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(signed long int)0xf2222210;
  if (a == 16)
    printf("--- 10 (17-02) OK ---\n");
  else {
    printf("*** 10 (17-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(signed long int)2147483647;
  if (b == 2147483647)
    printf("--- 10 (17-03) OK ---\n");
  else {
    printf("*** 10 (17-03) NG ***\n");
    printf("B = %x\n" , b);
  }

#if INT64
  b = (int)(signed long int)0xffffffffffffffff;
#else
  b = (int)(signed long int)0xffffffff;
#endif
  if (b == -1)
    printf("--- 10 (17-04) OK ---\n");
  else {
    printf("*** 10 (17-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(signed long int)0x77770007;
  if (c == 7)
    printf("--- 10 (17-05) OK ---\n");
  else {
    printf("*** 10 (17-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (short int)(signed long int)0xff00ffff;
  if (c == -1)
    printf("--- 10 (17-06) OK ---\n");
  else {
    printf("*** 10 (17-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(signed long int)7;
  if (d == 7)
    printf("--- 10 (17-07) OK ---\n");
  else {
    printf("*** 10 (17-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (long int)(signed long int)-1;
  if (d == -1)
    printf("--- 10 (17-08) OK ---\n");
  else {
    printf("*** 10 (17-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(signed long int)0x700000ff;
  if (e == -1)
    printf("--- 10 (17-09) OK ---\n");
  else {
    printf("*** 10 (17-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed char)(signed long int)0xffffff01;
  if (e == 1)
    printf("--- 10 (17-10) OK ---\n");
  else {
    printf("*** 10 (17-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed int)(signed long int)17111711;
  if (f == 17111711)
    printf("--- 10 (17-11) OK ---\n");
  else {
    printf("*** 10 (17-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed int)(signed long int)-2147483647;
  if (f == -2147483647)
    printf("--- 10 (17-12) OK ---\n");
  else {
    printf("*** 10 (17-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(signed long int)0x7fffffff;
  if (g == -1)
    printf("--- 10 (17-13) OK ---\n");
  else {
    printf("*** 10 (17-13) NG ***\n");
    printf("G = %x\n" , g);
  }

  g = (signed long int)(signed long int)0xffff000f;
  if (g == 15)
    printf("--- 10 (17-14) OK ---\n");
  else {
    printf("*** 10 (17-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(signed long int)0x7777ffff;
  if (h == 255)
    printf("--- 10 (17-15) OK ---\n");
  else {
    printf("*** 10 (17-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(signed long int)-1;
  if (h == 255)
    printf("--- 10 (17-16) OK ---\n");
  else {
    printf("*** 10 (17-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(signed long int)2147483647;
  if (i == 2147483647)
    printf("--- 10 (17-17) OK ---\n");
  else {
    printf("*** 10 (17-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(signed long int)-2;
#if INT64
  if (i == 18446744073709551614)
#else
  if (i == 4294967294)
#endif
    printf("--- 10 (17-18) OK ---\n");
  else {
    printf("*** 10 (17-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(signed long int)0x12347fff;
  if (j == 32767)
    printf("--- 10 (17-19) OK ---\n");
  else {
    printf("*** 10 (17-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(signed long int)-1;
  if (j == 65535)
    printf("--- 10 (17-20) OK ---\n");
  else {
    printf("*** 10 (17-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(signed long int)81;
  if (k == 81)
    printf("--- 10 (18-01) OK ---\n");
  else {
    printf("*** 10 (18-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(signed long int)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 10 (18-02) OK ---\n");
  else {
    printf("*** 10 (18-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("10 END  \n");
}
