#include <stdio.h>

  struct tag { int a[1000];
                int b[1000];
                };
int ex=1;
int f2();
int main()
{
  struct tag f();
  char a[50];
  static int i=1;

 printf(" 01 START\n");

  f2();
  if (ex   == 2)
   printf(" 01-2 OK \n");
  else
   printf(" 01-2 NG \n");

 printf(" 01 END  \n");
}
struct tag f()
{
   struct tag x;
   x.b[500]=500;
   return x;
}
int f2(){++ex;}
