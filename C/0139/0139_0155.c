#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func12();
int func11();
int func10();
int func9();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
  
 
 
 
 
 
 
 

int main()
{
  printf ("\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  func9();
  func10();
  func11();
  func12();
  printf ("\n");
exit (0);
}
 
int func1()                         
{
  int a  ;
  int x=0;
  for (a=0;a<10;++a)
   ++x;

  if (x!=10)
    printf ("\n");
}
 
int func2()                         
{
  int x=0,y=0;
  int a,b;
  for (a=0,b=0; ++b,a<5; ++a,++b)
  {
    x=a;
    y=b;
  }
  if (x!=4|| y!=9)
    printf ("\n");
}
 
int func3()                         
{
  int x=0;
  int a=0;
  for ( ;a<10; ++a)
  {
    switch(a)
    {
      case 0:
      case 1:
      case 2: ++x;
      default:;
    }
  }
  if (x!=3)
    printf ("\n");
}
 
int func4()                         
{
  int x=0;
  int a=0;
  for (a=0;  ;++a)
  {
    ++x;
    if(a>=9)
      goto lab;
  }
 lab:;
  if (x!=10)
    printf ("\n");
}
 
int func5()                         
{
  int x=0;
  int a=0;
  for ( ;a!=10;)
  {
    for(;;)
    {
      while(a<5)
      {
         ++x;
         break;
      }
      if (a<=10)
       break;
    }
    ++a;
  }
  if (x!=5)
    printf ("\n");
}
 
int func6()                         
{
  int x=0;
  int a=0;
  for ( ;;++a)
  {
    if (a>9)
      break;
    for(;;)
    {
      ++x;
      if (a<10)
       break;
    }
    ++x;
  }
  if (x!=20)
    printf ("\n");
}
 
int func7()                         
{
  int x=0;
  int a  ;
  for (a=0;; )
  {
    if (a>=10)
      break;
    ++x;
    ++a;
  }
  if (x!=10)
    printf ("\n");
}
 
int func8()                         
{
  int x=0;
  int a=5,b=5;
  for (;a&&b;)
  {
    if (a==4)
    {
      --a;--b;
      continue;
    }
    ++x;
    --a;--b;
  }
  if (x!=4)
    printf ("\n");
}
 
int func9()                         
{
  int x=0;
  int a=0;
  for (;;)
  {
    if (a>9)
    {
      if (x!=10)
        printf ("\n");
      return 0;
    }
    ++a;
    ++x;
  }
}
 
int func10()                        
{
  int x=0;
  int a,b=0;
  for (a=0;a||b;++a)
  {
  }
  if (x!=0)
    printf ("\n");
}
 
int func11()                        
{
  int a ;
  for (a=0; a<10 ;++a)
    ;
  if (a!=10)
    printf ("\n");
}
 
int func12()                        
{
  int a,b=0;
  int x=0;
  for (a=0; b=1 ;)
  {
    if (a==10)break ;
    ++a;
    ++x;
  }
  if (x!=10)
    printf ("\n");
}
