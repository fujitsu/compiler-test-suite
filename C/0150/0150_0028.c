#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int f();
int func4();
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  func3();
  func4();
  printf(" END  \n");
exit (0);
}
int func1(){
  static int i=0;
  static short int s=1;
  static char  c=2;
  static unsigned int ui=3;
  static unsigned short int us=4;
  static unsigned char   uc=5;
 
  if (!i)
    printf(" FUNC1-1 OK\n");
  else
    printf(" FUNC1-1 NG\n");
  if (!(i+i*s))
    printf(" FUNC1-2 OK\n");
  else
    printf(" FUNC1-2 NG\n");
  if (!(i>s))
    printf(" FUNC1-3 OK\n");
  else
    printf(" FUNC1-3 NG\n");
  if (!(c>=uc))
    printf(" FUNC1-4 OK\n");
  else
    printf(" FUNC1-4 NG\n");
  if (!(uc<i))
    printf(" FUNC1-5 OK\n");
  else
    printf(" FUNC1-5 NG\n");
  if (!(uc<=ui))
    printf(" FUNC1-6 OK\n");
  else
    printf(" FUNC1-6 NG\n");
  if (!(uc!=uc))
    printf(" FUNC1-7 OK\n");
  else
    printf(" FUNC1-7 NG\n");
  if (!(uc==us))
    printf(" FUNC1-8 OK\n");
  else
    printf(" FUNC1-8 NG\n");
  if (!((uc-uc)&&(s+i)))
    printf(" FUNC1-9 OK\n");
  else
    printf(" FUNC1-9 NG\n");
  if (!((uc-uc)||(s+s-s*2)))
    printf(" FUNC1-10 OK\n");
  else
    printf(" FUNC1-10 NG\n");
}
int func2(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;
 
  if (!!i)
    printf(" FUNC2-1 OK\n");
  else
    printf(" FUNC2-1 NG\n");
  if (!!!(i+i*s))
    printf(" FUNC2-2 NG\n");
  else
    printf(" FUNC2-2 OK\n");
  if (!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!(ui[0]>=i))
    printf(" FUNC2-3 OK\n");
  else
    printf(" FUNC2-3 NG\n");
  if (!!!!!!!!!!!!!!!!!!!!!(c>=uc[3]))
    printf(" FUNC2-4 OK\n");
  else
    printf(" FUNC2-4 NG\n");
}
int func3(){
  static int i=1,*ip=&i;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;
 
  if (i+i)
    printf(" FUNC3-1 OK\n");
  else
    printf(" FUNC3-1 NG\n");
  if (ui[0]*us[1])
    printf(" FUNC3-2 OK\n");
  else
    printf(" FUNC3-2 NG\n");
  if (f())
    printf(" FUNC3-3 OK\n");
  else
    printf(" FUNC3-3 NG\n");
  if (*ip)
    printf(" FUNC3-4 OK\n");
  else
    printf(" FUNC3-4 NG\n");
  if (stp->a)
    printf(" FUNC3-5 OK\n");
  else
    printf(" FUNC3-5 NG\n");
  if (ui[0])
    printf(" FUNC3-6 OK\n");
  else
    printf(" FUNC3-6 NG\n");
}
int f()
{
   return 1;
}
int func4(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  static struct tag{ unsigned int a:3;
                      unsigned int b:5;
                   }bit={2,0};
  static union utag{ int a;
                      int b;
                   }uni;
  uni.a=1;
 
  if (i)
    printf(" FUNC4-1 OK\n");
  else
    printf(" FUNC4-1 NG\n");
  if (bit.a)
    printf(" FUNC4-2 OK\n");
  else
    printf(" FUNC4-2 NG\n");
  if (uni.b)
    printf(" FUNC4-3 OK\n");
  else
    printf(" FUNC4-3 NG\n");
  if (ar[i+s])
    printf(" FUNC4-4 OK\n");
  else
    printf(" FUNC4-4 NG\n");
}
