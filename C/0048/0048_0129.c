#include <stdio.h>
int func6(void);
int func5(register int a, register int  b, volatile int  c);
int func4(register int a);
int func3(register volatile int  a);
int func2(int const a);
int func1(register int volatile a);
int main()
{
  int a=0;
  int b=1;
  int c=2;
printf(" START\n") ;
  if (func1 (a)!=0)                               
    printf(" FUNC1  NG\n");
  if (func2 (a)!=0)                               
    printf(" FUNC2  NG\n");
  if (func3 (a)!=0)                               
    printf(" FUNC3  NG\n");
  if (func4 (a)!=0)                               
    printf(" FUNC4  NG\n");
  if (func5 (a,b,c)!=3)                           
    printf(" FUNC5  NG\n");
  if (func6 ()!=0)                               
    printf(" FUNC6  NG\n");
printf(" END  \n") ;
}
int func1(register int volatile a)                  
{
  return a ;
}
int func2(int const a)                           
{
  return a ;
}
int func3(register volatile int  a)                      
{
  return a;
}
int func4(register int a)                           
{
  return a ;
}
int func5(register int a, register int  b, volatile int  c)   
{
  return a+b+c;
}
int func6(void)                                     
{
  int a=0;
  return a ;
}
