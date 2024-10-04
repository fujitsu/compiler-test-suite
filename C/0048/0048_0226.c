#include <stdio.h>
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);

int main()
{
  int   a,b,c ;                 
  char  e,f,g ;
  printf(" START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  printf(" END  \n");
}
int func1 (void)
{
  int a=0,b   ;
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

int func2 (void)
{
  int a;
  {                            
  }
  {
    int a;                      
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

int func3 (void)
{
  {                            
    int a;
    goto lab;
   lab:;
  }
  {
    int b;                      
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

int func4 (void)
{
  {
    int a;                      
    ++a;
    {
      int a;
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

int func5 (void)
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
