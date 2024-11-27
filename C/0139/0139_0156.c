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
  printf ("\n");
  func1();                        
  func2();                        
  func3();                        
  func4();                        
  func5();                        
  printf ("\n");
exit (0);
}
 
int func1()                         
{                              
  int a=0;                      
  int x=0;

  goto lab1;
  for ( ; ;++a)
  {
  lab1:
    if (a==5)
      break ;
   ++x;
  }

  goto lab2;
  while (a)
  {
  lab2:
    if (a==10)
      break;
    ++x;
    ++a;
  }

  goto lab3;
  do
  {
  lab3:
    ++x;
    break ;
  }
  while(a);

  if (x!=11)
    printf ("\n");
}
 
int func2()                         
{                              
  int a=0;                      
  int x=0;

  for ( ; ;++a)
  {
    if (a==5)
      goto lab1;
   ++x;
  }

 lab1:
  while (a)
  {
    if (a==10)
      goto lab2;
    ++x;
    ++a;
  }

 lab2:
  do
  {
    ++x;
    goto lab3;
  }
  while(a);

 lab3:
  if (x!=11)
    printf ("\n");
}
 
int func3()                         
{                              
  int x=0;
  int a=1;
  goto lab1;
  for (;;)
  {
  lab3:
    ++x;
    goto lab4;
    while(a)
    {
    lab2:
      ++x;
      goto lab3;
      for(;;)
      {
      lab1:
        ++x;
        goto lab2 ;
      }
    }
  }
lab4:
  if (x!=3)
    printf ("\n");
}
 
int func4()                         
{
  int x=0;
  int a=1;
  for (;;)
  {
    while(a)
    {
      for(;;)
      {
        ++x;
        goto lab  ;
      }
    }
  }
lab:;
  for (;;)
  {
    while(a)
    {
      for(;;)
      {
        ++x;
        goto lab1 ;
      }
      lab1:goto lab2;
    }
    lab2: break ;
  }

  if (x!=2)
    printf ("\n");
}
 
int func5()                            
{                                 
    int a=0,x=0;
  lab1:
    if (a!=0)
      goto lab2;
    a=1;
    ++x;
    goto lab1;
  lab2:;

  if (x!=1)
    printf ("\n");
}
