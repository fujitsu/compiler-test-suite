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
  unsigned int       i;
  unsigned short int j;
  unsigned long  int k;
    printf("11 START\n");

  a = (char)(unsigned char)255;
  if (a == -1)
    printf("--- 11 (19-01) OK ---\n");
  else {
    printf("*** 11 (19-01) NG ***\n");
    printf("A = %x\n" , a);
  }

  b = (int)(unsigned char)100;
  if (b == 100)
    printf("--- 11 (19-02) OK ---\n");
  else {
    printf("*** 11 (19-02) NG ***\n");
    printf("B = %x\n" , b);
  }

  c = (short int)(unsigned char)3;
  if (c == 3)
    printf("--- 11 (19-03) OK ---\n");
  else {
    printf("*** 11 (19-03) NG ***\n");
    printf("C = %x\n" , c);
  }

  d = (long int)(unsigned char)5;
  if (d == 5)
    printf("--- 11 (19-04) OK ---\n");
  else {
    printf("*** 11 (19-04) NG ***\n");
    printf("D = %x\n" , d);
  }

  e = (signed char)(unsigned char)255;
  if (e == -1)
    printf("--- 11 (19-05) OK ---\n");
  else {
    printf("*** 11 (19-05) NG ***\n");
    printf("E = %x\n" , e);

  }

  f = (signed int)(unsigned char)9;
  if (f == 9)
    printf("--- 11 (19-06) OK ---\n");
  else {
    printf("*** 11 (19-06) NG ***\n");
    printf("F = %x\n" , f);
  }

  g = (signed short int)(unsigned char)11;
  if (g == 11)
    printf("--- 11 (19-07) OK ---\n");
  else {
    printf("*** 11 (19-07) NG ***\n");
    printf("G = %x\n" , g);
  }

  h = (signed long int)(unsigned char)13;
  if (h == 13)
    printf("--- 11 (19-08) OK ---\n");
  else {
    printf("*** 11 (19-08) NG ***\n");
    printf("H = %x\n" , h);
  }

  i = (unsigned int)(unsigned char)17;
  if (i == 17)
    printf("--- 11 (19-09) OK ---\n");
  else {
    printf("*** 11 (19-09) NG ***\n");
    printf("I = %x\n" , i);
  }

  j = (unsigned short int)(unsigned char)19;
  if (j == 19)
    printf("--- 11 (19-10) OK ---\n");
  else {
    printf("*** 11 (19-10) NG ***\n");
    printf("J = %x\n" , j);
  }

  k = (unsigned long int)(unsigned char)41;
  if (k == 41)
    printf("--- 11 (19-11) OK ---\n");
  else {
    printf("*** 11 (19-11) NG ***\n");
    printf("K = %x\n" , k);
  }

  printf("11 END  \n");
}
