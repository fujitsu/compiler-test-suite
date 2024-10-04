#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  short int          c;
  long  int          d;
  signed int         e;
  signed short int   f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("07 START\n");

  a = (char)(signed char)100;
  if (a == 100)
    printf("--- 07 (11-01) OK ---\n");
  else {
    printf("*** 07 (11-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(signed char)-1;
  if (a == -1)
    printf("--- 07 (11-02) OK ---\n");
  else {
    printf("*** 07 (11-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(signed char)127;
  if (b == 127)
    printf("--- 07 (11-03) OK ---\n");
  else {
    printf("*** 07 (11-03) NG ***\n");
    printf("B = %x\n" , b);
  }

  b = (int)(signed char)-1;
  if (b == -1)
    printf("--- 07 (11-04) OK ---\n");
  else {
    printf("*** 07 (11-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(signed char)5;
  if (c == 5)
    printf("--- 07 (11-05) OK ---\n");
  else {
    printf("*** 07 (11-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (short int)(signed char)-6;
  if (c == -6)
    printf("--- 07 (11-06) OK ---\n");
  else {
    printf("*** 07 (11-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(signed char)7;
  if (d == 7)
    printf("--- 07 (11-07) OK ---\n");
  else {
    printf("*** 07 (11-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (long int)(signed char)-8;
  if (d == -8)
    printf("--- 07 (11-08) OK ---\n");
  else {
    printf("*** 07 (11-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed int)(signed char)9;
  if (e == 9)
    printf("--- 07 (11-09) OK ---\n");
  else {
    printf("*** 07 (11-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed int)(signed char)-10;
  if (e == -10)
    printf("--- 07 (11-10) OK ---\n");
  else {
    printf("*** 07 (11-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed short int)(signed char)11;
  if (f == 11)
    printf("--- 07 (11-11) OK ---\n");
  else {
    printf("*** 07 (11-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed short int)(signed char)-12;
  if (f == -12)
    printf("--- 07 (11-12) OK ---\n");
  else {
    printf("*** 07 (11-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(signed char)13;
  if (g == 13)
    printf("--- 07 (11-13) OK ---\n");
  else {
    printf("*** 07 (11-13) NG ***\n");
    printf("G = %x\n" , g);
  }

  g = (signed long int)(signed char)-14;
  if (g == -14)
    printf("--- 07 (11-14) OK ---\n");
  else {
    printf("*** 07 (11-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(signed char)15;
  if (h == 15)
    printf("--- 07 (11-15) OK ---\n");
  else {
    printf("*** 07 (11-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(signed char)-1;
  if (h == 255)
    printf("--- 07 (11-16) OK ---\n");
  else {
    printf("*** 07 (11-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(signed char)17;
  if (i == 17)
    printf("--- 07 (11-17) OK ---\n");
  else {
    printf("*** 07 (11-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(signed char)-1;
#if INT64
  if (i == 18446744073709551615)
#else
  if (i == 4294967295)
#endif
    printf("--- 07 (11-18) OK ---\n");
  else {
    printf("*** 07 (11-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(signed char)19;
  if (j == 19)
    printf("--- 07 (11-19) OK ---\n");
  else {
    printf("*** 07 (11-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(signed char)-1;
  if (j == 65535)
    printf("--- 07 (11-20) OK ---\n");
  else {
    printf("*** 07 (11-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(signed char)41;
  if (k == 41)
    printf("--- 07 (12-01) OK ---\n");
  else {
    printf("*** 07 (12-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(signed char)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 07 (12-02) OK ---\n");
  else {
    printf("*** 07 (12-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("07 END  \n");
}
