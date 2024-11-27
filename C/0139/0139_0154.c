#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
  printf ("\n");
exit (0);
}
 
int func1()                         
{
  int a=0;
  int x=0;
  do
   ++x;
  while(a);

  if (x!=1)
    printf ("\n");
}
 
int func2()                         
{
  long int a=1;
  int x=0;
  do
  {
    ++x;
    ++a;
  }
  while(a<3);

  if (x!=2)
    printf ("\n");
}
 
int func3()                         
{
  short int a=0 ;
  do
    ;
  while (a);
}
 
int func4()                         
{
  char  a=1 ;
  int x=0;
  do
  {
    if(a==2)
    {
      ++a;
      continue;
    }
    ++x;
    ++a;
  }
  while(a!=4);
  do
  {
  }
  while(a!=4);

  if (x!=2)
    printf ("\n");
}
 
int func5()                         
{
  long int a=4,b=4;
  int x=0;
  do
  {
    if (a==1)
      goto lab ;
    ++x;
    --a;
    --b;
  }
  while(a&&b) ;
 lab:
  if (x!=3)
    printf ("\n");
}
 
int func6()                         
{
  float a=2.0,b=2.0;
  int c,x=0;
  do
  {
    for(c=0;c<1;++c)
    {
      switch(c)
      {
      case 0:++x;
      }
    }
    b=b-1.0;
    a=a-1.0;
    if (a==0.0)
      break;
  }
  while(a||b);
  if (x!=2)
    printf ("\n");
}
 
int func7()                         
{
  double a=1.0;
  int x=0;
  do
  {
    ++x;
    if (a==1.0)
      goto lab;
  }
  while(a) ;
  do
  {
    ++x;
  lab:
    ++x;
    a=a-1.0;
  }
  while(a);
  if (x!=2)
    printf ("\n");
}
 
int func8()                         
{                              
  int a=1,b=2;
  int x=0;

  do
  {
    --a;
    ++x;
  }
  while(a!=0);

  do
  {
    ++x;
    ++a;
  }
  while(a<1);

  a=2;
  do
  {
    ++x;
    --a;--b;
  }
  while(a&&b);

  if (x!=4)
    printf ("\n");
}
 
int func9()                         
{
  int a=2;
  int x=0;
  do
  {
    if (a==1)
    {
      if (x!=1)
        printf ("\n");
      return 0;
    }
    --a;
    ++x;
  }
  while(a);
}
 
int func10()                        
{
  int a=2,b=1;
  int x=0;
  do
  {
    do
    {
      ++x;
      --b;
    }
    while(b) ;
    b=1;
    --a;
  }
  while(a);
  if (x!=2)
    printf ("\n");
}
 
int func11()                        
{                              
  long double  ld=1.0;
  long long int  lli=1;
  int x=0;
  do
  {
    ++x;
    ld=ld-1.0;
  }
  while (ld);
  do
  {
    ++x;
    --lli;
  }
  while (lli);
  if (x!=2)
    printf ("\n");
}
