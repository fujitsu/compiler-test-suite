#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int fa(int x, int y, int z);
int func7();
int func6();
int func5();
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
  func5();
  func6();
  func7();
  printf(" END    \n");
exit (0);
}
int func1(){
 static  struct tag {
                    unsigned int a:1;
                    unsigned int b:1;
                    }x={0,1};
 
  if (x.b==1)
    printf(" FUNC1 OK\n");
  else
    printf(" FUNC1 NG\n");
}
int func2(){
  static struct tag {
                    unsigned int a:1;
                    unsigned int b:3;
                    }x={0,2};
 
  if (x.b|=0)
    printf(" FUNC2 OK\n");
  else
    printf(" FUNC2 NG\n");
}
int func3(){
  static struct tag {
                    unsigned int a:1;
                    unsigned int b:3;
                    }x={0,2};
  struct tag *stp;
 unsigned int i; i=1;
 
  stp=&x;
 
  if ((*(stp+i-1)).b==2)
    printf(" FUNC3 OK\n");
  else
    printf(" FUNC3 NG\n");
}
int func4(){
  static struct tag {
                    unsigned int a:1;
                    unsigned int b:3;
                    }ar[2]={{0,0},{0,1}};
 
  if (ar[1].b|=0)
    printf(" FUNC4 OK\n");
  else
    printf(" FUNC4 NG\n");
}
int func5(){
  int a,b,c;
  int f();
 
  a=b=c=1;
 
  if (f()==0 && fa(a,b,c)==(a+b+c))
    printf(" FUNC5 OK\n");
  else
    printf(" FUNC5 NG\n");
}
int f()
{
    return 0;
}
int fa(x,y,z)
  int x,y,z;
{
  return x+y+z;
}
int func6(){
  static int a=-1;
  int b;
 
  memset(&a,0,sizeof(a));
  if (a==0)
    printf(" FUNC6 OK\n");
  else
    printf(" FUNC6 NG\n");
}
int func7(){
  int i,j; i=1;j=0;
 
  i=(j&&j)||((i&&i)&&(j||i));
  if (i)
    printf(" FUNC7 OK\n");
  else
    printf(" FUNC7 NG\n");
}
