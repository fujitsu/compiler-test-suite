#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  short int          c;
  long  int          d;
  signed char        e;
  signed int         f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("09 START\n");

  a = (char)(signed short int)32767;
  if (a == -1)
    printf("--- 09 (15-01) OK ---\n");
  else {
    printf("*** 09 (15-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(signed short int)0xf220;
  if (a == 32)
    printf("--- 09 (15-02) OK ---\n");
  else {
    printf("*** 09 (15-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(signed short int)32767;
  if (b == 32767)
    printf("--- 09 (15-03) OK ---\n");
  else {
    printf("*** 09 (15-03) NG ***\n");
    printf("B = %x\n" , b);
  }

  b = (int)(signed short int)-32767;
  if (b == -32767)
    printf("--- 09 (15-04) OK ---\n");
  else {
    printf("*** 09 (15-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(signed short int)32767;
  if (c == 32767)
    printf("--- 09 (15-05) OK ---\n");
  else {
    printf("*** 09 (15-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (short int)(signed short int)-32767;
  if (c == -32767)
    printf("--- 09 (15-06) OK ---\n");
  else {
    printf("*** 09 (15-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(signed short int)7;
  if (d == 7)
    printf("--- 09 (15-07) OK ---\n");
  else {
    printf("*** 09 (15-07) NG ***\n");
    printf("D = %x\n" , d);

  }

  d = (long int)(signed short int)-1508;
  if (d == -1508)
    printf("--- 09 (15-08) OK ---\n");
  else {
    printf("*** 09 (15-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(signed short int)0x7fff;
  if (e == -1)
    printf("--- 09 (15-09) OK ---\n");
  else {
    printf("*** 09 (15-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed char)(signed short int)0xff01;
  if (e == 1)
    printf("--- 09 (15-10) OK ---\n");
  else {
    printf("*** 09 (15-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed int)(signed short int)32767;
  if (f == 32767)
    printf("--- 09 (15-11) OK ---\n");
  else {
    printf("*** 09 (15-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed int)(signed short int)-12345;
  if (f == -12345)
    printf("--- 09 (15-12) OK ---\n");
  else {
    printf("*** 09 (15-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(signed short int)1234;
  if (g == 1234)
    printf("--- 09 (15-13) OK ---\n");
  else {
    printf("*** 09 (15-13) NG ***\n");
    printf("G = %x\n" , g);
  }

  g = (signed long int)(signed short int)-1;
  if (g == -1)
    printf("--- 09 (15-14) OK ---\n");
  else {
    printf("*** 09 (15-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(signed short int)0x1110;
  if (h == 16)
    printf("--- 09 (15-15) OK ---\n");
  else {
    printf("*** 09 (15-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(signed short int)-1;
  if (h == 255)
    printf("--- 09 (15-16) OK ---\n");
  else {
    printf("*** 09 (15-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(signed short int)32767;
  if (i == 32767)
    printf("--- 09 (15-17) OK ---\n");
  else {
    printf("*** 09 (15-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(signed short int)-1;
  if (i == -1)
    printf("--- 09 (15-18) OK ---\n");
  else {
    printf("*** 09 (15-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(signed short int)32767;
  if (j == 32767)
    printf("--- 09 (15-19) OK ---\n");
  else {
    printf("*** 09 (15-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(signed short int)-1;
  if (j == 65535)
    printf("--- 09 (15-20) OK ---\n");
  else {
    printf("*** 09 (15-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(signed short int)81;
  if (k == 81)
    printf("--- 09 (16-01) OK ---\n");
  else {
    printf("*** 09 (16-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(signed short int)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 09 (16-02) OK ---\n");
  else {
    printf("*** 09 (16-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("09 END  \n");
}
