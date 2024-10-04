#include<stdio.h>
 

int main()
{
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
  unsigned long  int l;

  printf("01 START\n");

  a = (char)(char)127;
  if (a == 127)
    printf("--- 01 (01-01) OK ---\n");
  else {
    printf("*** 01 (01-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(char)0xff;
  if (a == -1)
    printf("--- 01 (01-02) OK ---\n");
  else {
    printf("*** 01 (01-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(int)1234;
  if (b == 1234)
    printf("--- 01 (01-03) OK ---\n");
  else {
    printf("*** 01 (01-03) NG ***\n");
    printf("B = %x\n" , b);
  }

  b = (int)(int)-1234;
  if (b == -1234)
    printf("--- 01 (01-04) OK ---\n");
  else {
    printf("*** 01 (01-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(short int)1111;
  if (c == 1111)
    printf("--- 01 (01-05) OK ---\n");
  else {
    printf("*** 01 (01-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (short int)(short int)-32767;
  if (c == -32767)
    printf("--- 01 (01-06) OK ---\n");
  else {
    printf("*** 01 (01-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(long int)2147483647;
  if (d == 2147483647)
    printf("--- 01 (01-07) OK ---\n");
  else {
    printf("*** 01 (01-07) NG ***\n");
    printf("D = %x\n" , d);
  }

  d = (long int)(long int)-2147483648;
  if (d == -2147483648)
    printf("--- 01 (01-08) OK ---\n");
  else {
    printf("*** 01 (01-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(signed char)99;
  if (e == 99)
    printf("--- 01 (01-09) OK ---\n");
  else {
    printf("*** 01 (01-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed char)(signed char)-10;
  if (e == -10)
    printf("--- 01 (01-10) OK ---\n");
  else {
    printf("*** 01 (01-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed int)(signed int)11;
  if (f == 11)
    printf("--- 01 (01-11) OK ---\n");
  else {
    printf("*** 01 (01-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed int)(signed int)-12;
  if (f == -12)
    printf("--- 01 (01-12) OK ---\n");
  else {
    printf("*** 01 (01-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed short int)(signed short int)13;
  if (g == 13)
    printf("--- 01 (01-13) OK ---\n");
  else {
    printf("*** 01 (01-13) NG ***\n");
    printf("G = %x\n" , g);
  }

  g = (signed short int)(signed short int)0xffff;
  if (g == -1)
    printf("--- 01 (01-14) OK ---\n");
  else {
    printf("*** 01 (01-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (signed long int)(signed long int)15;
  if (h == 15)
    printf("--- 01 (01-15) OK ---\n");
  else {
    printf("*** 01 (01-15) NG ***\n");
    printf("H = %x\n" , h);
  }

#if INT64 || LONG64  || __x86_64__ || __aarch64__
  h = (signed long int)(signed long int)0xffffffffffffffff;
#else
  h = (signed long int)(signed long int)0xffffffff;
#endif
  if (h == -1)
    printf("--- 01 (01-16) OK ---\n");
  else {
    printf("*** 01 (01-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned char)(unsigned char)255;
  if (i == 255)
    printf("--- 01 (01-17) OK ---\n");
  else {
    printf("*** 01 (01-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned int)(unsigned int)4294967295;
  if (j == 4294967295)
    printf("--- 01 (01-18) OK ---\n");
  else {
    printf("*** 01 (01-18) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned short int)(unsigned short int)19;
  if (k == 19)
    printf("--- 01 (01-19) OK ---\n");
  else {
    printf("*** 01 (01-19) NG ***\n");
    printf("K = %x\n" , k);
  }

  l = (unsigned long int)(unsigned long int)20;
  if (l == 20)
    printf("--- 01 (01-20) OK ---\n");
  else {
    printf("*** 01 (01-20) NG ***\n");
    printf("L = %x\n" , l);
  }

  printf("01 END  \n");
}
