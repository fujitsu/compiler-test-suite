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
  unsigned long  int k;
    printf("13 START\n");

  a = (char)(unsigned short int)0x7fff;
  if (a == -1)
   printf("--- 13 (21-01) OK ---\n");
  else {
    printf("*** 13 (21-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(unsigned short int)65535;
  if (b == 65535)
    printf("--- 13 (21-02) OK ---\n");
  else {
    printf("*** 13 (21-02) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(unsigned short int)0xffff;
  if (c == -1)
    printf("--- 13 (21-03) OK ---\n");
  else {
    printf("*** 13 (21-03) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(unsigned short int)44444;
  if (d == 44444)
    printf("--- 13 (21-04) OK ---\n");
  else {
    printf("*** 13 (21-04) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(unsigned short int)0x11ff;
  if (e == -1)
    printf("--- 13 (21-05) OK ---\n");
  else {
    printf("*** 13 (21-05) NG ***\n");
    printf("E = %x\n" , e);

  }

  f = (signed int)(unsigned short int)0xffff;
  if (f == 0xffff)
    printf("--- 13 (21-06) OK ---\n");
  else {
    printf("*** 13 (21-06) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed short int)(unsigned short int)65535;
  if (g == -1)
    printf("--- 13 (21-07) OK ---\n");
  else {
    printf("*** 13 (21-07) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (signed long int)(unsigned short int)65535;
  if (h == 65535)
    printf("--- 13 (21-08) OK ---\n");
  else {
    printf("*** 13 (21-08) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned char)(unsigned short int)0x11ff;
  if (i == 255)
    printf("--- 13 (21-09) OK ---\n");
  else {
    printf("*** 13 (21-09) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned int)(unsigned short int)65432;
  if (j == 65432)
    printf("--- 13 (21-10) OK ---\n");
  else {
    printf("*** 13 (21-10) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(unsigned short int)81;
  if (k == 81)
    printf("--- 13 (21-11) OK ---\n");
  else {
    printf("*** 13 (21-11) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("13 END  \n");
}
