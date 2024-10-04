#include<stdio.h>
 

int main() {
  char               a;
  int                b;
  short int          c;
  long  int          d;
  signed char        e;
  signed short int   f;
  signed long  int   g;
  unsigned char      h;
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("08 START\n");

  a = (char)(signed int)0x1234560f;
  if (a == 15)
    printf("--- 08 (13-01) OK ---\n");
  else {
    printf("*** 08 (13-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  a = (char)(signed int)0xf01234ff;
  if (a == -1)
    printf("--- 08 (13-02) OK ---\n");
  else {
    printf("*** 08 (13-02) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(signed int)2147483647;
  if (b == 2147483647)
    printf("--- 08 (13-03) OK ---\n");
  else {
    printf("*** 08 (13-03) NG ***\n");
    printf("B = %x\n" , b);
  }

#if INT64
  b = (int)(signed int)0xffffffffffffffff;
#else
  b = (int)(signed int)0xffffffff;
#endif
  if (b == -1)
    printf("--- 08 (13-04) OK ---\n");
  else {
    printf("*** 08 (13-04) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(signed int)0x77777777;
  if (c == 0x7777)
    printf("--- 08 (13-05) OK ---\n");
  else {
    printf("*** 08 (13-05) NG ***\n");
    printf("C = %x\n" , c);
  }

  c = (short int)(signed int)0xf000ffff;
  if (c == -1)
    printf("--- 08 (13-06) OK ---\n");
  else {
    printf("*** 08 (13-06) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(signed int)2147483647;
  if (d == 2147483647)
    printf("--- 08 (13-07) OK ---\n");
  else {
    printf("*** 08 (13-07) NG ***\n");
    printf("D = %x\n" , d);

  }

#if INT64
  d = (long int)(signed int)0xfffffffffffffffe;
#else
  d = (long int)(signed int)0xfffffffe;
#endif
  if (d == -2)
    printf("--- 08 (13-08) OK ---\n");
  else {
    printf("*** 08 (13-08) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(signed int)0x702152ff;
  if (e == -1)
    printf("--- 08 (13-09) OK ---\n");
  else {
    printf("*** 08 (13-09) NG ***\n");
    printf("E = %x\n" , e);
  }

  e = (signed char)(signed int)0xf0f0ff0d;
  if (e == 13)
    printf("--- 08 (13-10) OK ---\n");
  else {
    printf("*** 08 (13-10) NG ***\n");
    printf("E = %x\n" , e);
  }

  f = (signed short int)(signed int)0x7f01ffff;
  if (f == -1)
    printf("--- 08 (13-11) OK ---\n");
  else {
    printf("*** 08 (13-11) NG ***\n");
    printf("F = %x\n" , f);
  }

  f = (signed short int)(signed int)0xf0ff000c;
  if (f == 12)
    printf("--- 08 (13-12) OK ---\n");
  else {
    printf("*** 08 (13-12) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed long int)(signed int)0x7fffffff;
  if (g == 2147483647)
    printf("--- 08 (13-13) OK ---\n");
  else {
    printf("*** 08 (13-13) NG ***\n");
    printf("G = %x\n" , g);
  }

#if INT64
  g = (signed long int)(signed int)0xffffffffffffffff;
#else
  g = (signed long int)(signed int)0xffffffff;
#endif
  if (g == -1)
    printf("--- 08 (13-14) OK ---\n");
  else {
    printf("*** 08 (13-14) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (unsigned char)(signed int)0x701245ff;
  if (h == 255)
    printf("--- 08 (13-15) OK ---\n");
  else {
    printf("*** 08 (13-15) NG ***\n");
    printf("H = %x\n" , h);
  }

  h = (unsigned char)(signed int)-1;
  if (h == 255)
    printf("--- 08 (13-16) OK ---\n");
  else {
    printf("*** 08 (13-16) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(signed int)2147483647;
  if (i == 2147483647)
    printf("--- 08 (13-17) OK ---\n");
  else {
    printf("*** 08 (13-17) NG ***\n");
    printf("I = %x\n" , i);
  }

  i = (unsigned int)(signed int)-1;
#if INT64
  if (i == 18446744073709551615)
#else
  if (i == 4294967295)
#endif
    printf("--- 08 (13-18) OK ---\n");
  else {
    printf("*** 08 (13-18) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(signed int)0x1111ffff;
  if (j == 65535)
    printf("--- 08 (13-19) OK ---\n");
  else {
    printf("*** 08 (13-19) NG ***\n");
    printf("J = %x\n" , j);
  }

  j = (unsigned short int)(signed int)-1;
  if (j == 65535)
    printf("--- 08 (13-20) OK ---\n");
  else {
    printf("*** 08 (13-20) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(signed int)41;
  if (k == 41)
    printf("--- 08 (14-01) OK ---\n");
  else {
    printf("*** 08 (14-01) NG ***\n");
    printf("K = %x\n" , k);
  }

  k = (unsigned long int)(signed int)-1;
#if INT64 || LONG64  || __x86_64__ || __aarch64__
  if (k == 18446744073709551615)
#else
  if (k == 4294967295)
#endif
    printf("--- 08 (14-02) OK ---\n");
  else {
    printf("*** 08 (14-02) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("08 END  \n");
}
