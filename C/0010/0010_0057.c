#include <stdio.h>

int main()
{
  char                    a;
  char               h[2];
  short int               b;
  unsigned int            c;
  long long int           d;
  long double             e;
  struct tag1
   { int el1;
     char el2;
   } str1 ;
  union ux
   { int el3;
     char el4;
   } str2 ;

  printf("********** TEST START **********\n");

       a=12;
       h[1]='t';
       b=-15;
       c=5;
       d=10;
       e=7;
       str1.el1=4;
       str2.el3=9;

  if (a == 12 && b == -15 && c == 5 && d == 10 && e == 7)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");
  if (h[1] == 't')
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");
  if (str1.el1 == 4 && str2.el3 == 9)
      printf("***** 03 ***** O   K *****\n");
  else
      printf("***** 03 ***** N   G *****\n");

  printf("********** TEST  END  **********\n");
}
