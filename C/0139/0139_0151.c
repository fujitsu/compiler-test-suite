#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func5();
int func4();
int func3();
int func2();
int func1();
  
 
 
 
 
 
 
 

int main()
{
  int   a,b,c ;                  
  char  e,f,g ;
  printf("\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  printf("\n");
exit (0);
}
int func1()
{
  int a=0,b=0   ;
  {
    goto lab ;                   
  }
  lab:;
  {
    switch (a)                   
    {
      case 1:  ++b;                
      default: --b;                
    }
  }
  {
    while(a)                     
    {
      continue;                  
    }
    ;                            
  }
  {
    do                           
      break;                     
    while(a);                    
  }
  {
    if (a) ;                     
  }
  {                             
    return 0;
  }
}

int func2()
{
  int a=0;
  {                             
  }
  {
    int a=0;                       
    {
      int aa;
    }
  }
  {                             
    ++a;
    {
      --a;
    }
  }
}

int func3()
{
  {                             
    int a;
    goto lab;
   lab:;
  }
  {
    int b=0;                       
    switch(b)                    
    {
      case 1:;
      default:;
    }
  }
  {
   ;                             
    {
      ;
    }
  }
}

int func4()
{
  {
    int a=0;                       
    ++a;
    {
      int a=0;
      if (a) ;
    }
  }
  {
    int a;                       
    int b;
    a=1;
    b=1;
    {
      char x;
      char y;
      x='x';
      y='y';
    }
   }
}

int func5()
{
  int a;
  int b;
  a=1;
  ;                              
  b=10;
  for(;b<=11;)
  {
   ++a;
   ;                             
   ++b;
  }
}
