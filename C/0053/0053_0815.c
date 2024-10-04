#include <stdio.h>
int sub();
int f3()
{
  printf("-3 OK \n");
}
extern int f2();
int main()
{
  int f1();
  sub();
}
int sub()
{
#if __GNUC__
   int f1();
   int f2();
   int f3();
#else 
   static int f1();
   static int f2();
   static int f3();
#endif 
   f1();
}
int f1()
{
#if __GNUC__
   int f2();
#else 
   static int f2();
#endif 
   printf("-1 OK \n");
   f2();
}
int f2()
{
#if __GNUC__
   int f3();
#else 
   static int f3();
#endif 
   printf("-2 OK \n");
   f3();
}
