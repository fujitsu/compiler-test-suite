#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
  printf ("\n");
exit (0);
}
 
int func1()                         
{
  int a=0;
  int x=0;

  while(a<10)
  {
    ++a;
    if (a==5)
      continue;
    ++x;
  }

  if (x!=9)
    printf ("\n");
}
 
int func2()                         
{
  int a=0;
  int x=0;

  do
  {
   ++a;
    if (a==5)
      continue;
    if (a==6)
      continue;
   ++x;
  }
  while(a<10);

  if (x!=8)
    printf ("\n");
}
 
int func3()                         
{
  int x=0;
  int a=0;
  for (;;)
  {
    if (a>9) break;
    for(;a<10;++a)
    {
      if (a==5)
        continue;
      ++x;
    }
    ++a;
  }

  if (x!=9)
    printf ("\n");
}
 
int func4()                         
{
  int x=0;
  int a=0;
  do
  {
    ++x;
    ++a;
    continue;
  }
  while(a<10);

  if (x!=10)
    printf ("\n");
}
 
int func5()                         
{
  int x=0;
  int a=0;
  for (a=0;a<10;++a)
  {
    ++x;
    continue;
  }

  if (x!=10)
    printf ("\n");
}
 
int func6()                         
{
  int x=0;
  int a=0,b=0,c=0,d=0,e=0,f=0;
  for (a=0;a<2;++a )
  {
    while(b<2)
    {
      do
      {
        for(d=0;d<2;++d )
        {
          while(e<2)
          {
            do
            {
              ++f;
              if (f==1)
                continue;
              ++x;
            }
            while(f<2) ;
            ++e;
          }
          if (d==1)
          continue;
        }
        ++c;
      }
      while(c<2) ;
      ++b;
    }
  }

  if (x!=2)
    printf ("\n");
}
