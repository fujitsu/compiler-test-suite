#include<stdio.h>
 

int main() {
  int                a;
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
    printf("03 START\n");

  a = (int)(signed char)100;
  if (a == 100)
    printf("--- 03 (03-01) OK ---\n");
  else {
    printf("*** 03 (03-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (int)(signed char)-100;
  if (a == -100)
    printf("--- 03 (03-02) OK ---\n");
  else {
    printf("*** 03 (03-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (short int)(char)3;
  if (b == 3)
    printf("--- 03 (03-03) OK ---\n");
  else {
    printf("*** 03 (03-03) NG ***\n");
    printf("B = %x\n" , b);
  }

  b = (short int)(signed char)-4;
  if (b == -4)
    printf("--- 03 (03-04) OK ---\n");
  else {
    printf("*** 03 (03-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (long int)(char)5;
  if (c == 5)
    printf("--- 03 (03-05) OK ---\n");
  else {
    printf("*** 03 (03-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (long int)(signed char)-6;
  if (c == -6)
    printf("--- 03 (03-06) OK ---\n");
  else {
    printf("*** 03 (03-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (signed char)(char)7;
  if (d == 7)
    printf("--- 03 (03-07) OK ---\n");
  else {
    printf("*** 03 (03-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (signed char)(signed char)-8;
  if (d == -8)
    printf("--- 03 (03-08) OK ---\n");
  else {
    printf("*** 03 (03-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed int)(char)9;
  if (e == 9)
    printf("--- 03 (03-09) OK ---\n");
  else {
    printf("*** 03 (03-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed int)(signed char)-10;
  if (e == -10)
    printf("--- 03 (03-10) OK ---\n");
  else {
    printf("*** 03 (03-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed short int)(char)11;
  if (f == 11)
    printf("--- 03 (03-11) OK ---\n");
  else {
    printf("*** 03 (03-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed short int)(signed char)-12;
  if (f == -12)
    printf("--- 03 (03-12) OK ---\n");
  else {
    printf("*** 03 (03-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(char)13;
  if (g == 13)
    printf("--- 03 (03-13) OK ---\n");
  else {
    printf("*** 03 (03-13) NG ***\n");
    printf("G = %x\n" , g);
  }

  g = (signed long int)(signed char)-14;
  if (g == -14)
    printf("--- 03 (03-14) OK ---\n");
  else {
    printf("*** 03 (03-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(char)15;
  if (h == 15)
    printf("--- 03 (03-15) OK ---\n");
  else {
    printf("*** 03 (03-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(signed char)-1;
  if (h == 255)
    printf("--- 03 (03-16) OK ---\n");
  else {
    printf("*** 03 (03-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(char)17;
  if (i == 17)
    printf("--- 03 (03-17) OK ---\n");
  else {
    printf("*** 03 (03-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(signed char)-1;
#if INT64
  if (i == 18446744073709551615)
#else
  if (i == 4294967295)
#endif
    printf("--- 03 (03-18) OK ---\n");
  else {
    printf("*** 03 (03-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(char)19;
  if (j == 19)
    printf("--- 03 (03-19) OK ---\n");
  else {
    printf("*** 03 (03-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(signed char)-1;
  if (j == 65535)
    printf("--- 03 (03-20) OK ---\n");
  else {
    printf("*** 03 (03-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(char)41;
  if (k == 41)
    printf("--- 03 (04-01) OK ---\n");
  else {
    printf("*** 03 (04-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(signed char)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 03 (04-02) OK ---\n");
  else {
    printf("*** 03 (04-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("03 END  \n");
}
