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

  switch(a)
  {
    case 0: ++x;
            break;
    case 1: x=x+2;
  }

  if (x!=1)
    printf ("\n");
}
 
int func2()                         
{
  int a=0;
  int x=0;

  while(a<10)
  {
    ++a;
    while(a<5)
    {
      ++a;
      if (a==1)
       break;
      if (a==2)
       break;
     ++x;
    }
    ++x;
  }

  if (x!=9)
    printf ("\n");
}
 
int func3()                         
{
  int a=0,b=0,c=0;
  int x=0;

  do
  {
    do
    {
      do
      {
        ++c;
        if (c==5)
          break;
        ++x;
      }
      while(c<10);
      ++b;
    }
    while(b<10);
    ++a;
  }
  while(a<10);


  if (x!=26)
    printf ("\n");
}
 
int func4()                         
{
  int x=0;
  int a,b,c,d;
  for (a=0;a<2;++a)
  {
    for(b=0;b<2;++b)
    {
      for(c=0;c<2;++c)
      {
        for(d=0;d<2;++d)
        {
          if (d==1)
            break;
          ++x;
        }
      }
    }
  }

  if (x!=8)
    printf ("\n");
}
 
int func5()                         
{
  int x=0;
  int a;
  for (a=0;a<2;++a)
  {
    ++x;
    break;
  }

  if (x!=1)
    printf ("\n");
}
