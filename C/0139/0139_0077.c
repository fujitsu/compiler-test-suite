#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
printf("\n") ;
  if (func1 (a)!=0)                                
    printf("\n");
  if (func2 (a)!=0)                                
    printf("\n");
  if (func3 (a)!=0)                                
    printf("\n");
  if (func4 (a)!=0)                                
    printf("\n");
  if (func5 (a,b,c)!=3)                            
    printf("\n");
  if (func6 ()!=0)                                
    printf("\n");
printf("\n") ;
exit (0);
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
