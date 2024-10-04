#include <stdio.h>
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
  printf (" END\n");
}
int func1()                        
{
  int a=1;
  int x=0;
  while(a)
    break;
  if (x!=0)
    printf (" FUNC1 NG\n");
}
int func2()                        
{
  long int a=2;
  int x=1;
  while(a<3)
  {
    switch(x)
    {
      case 1:;
    }
    ++a;
    ++x;
  }
  if (x!=2)
    printf (" FUNC2 NG\n");
}
int func3()                        
{
  short int a=1 ;
  int x=0,i=0;
  while (a!=10)
  {
    while(i<1)
    {
      ++x;
      ++i;
    }
    i=0;
    ++a;
    if(a>5)
      break;
  }
  if (x!=5)
    printf (" FUNC3 NG\n");
}
int func4()                        
{
  char  a=3,b=3;
  int i,x=0;
  while (a&&b)
  {
    for(i=0;i<1;++i)
      ++x;
    if (a==0)
      break;
    if (a==1) {
        --a;--b;
      continue;
    }
    if (a==2)
      goto lab;
    ;
  lab:
    --a;--b;
  }
  if (x!=3)
    printf (" FUNC4 NG\n");
}
int func5()                        
{
  long int a=3,b=3,c=1,d=1;
  int x=0;
  while (a||b)
  {
    while (c>0)
    {
      while (d>0)
      {
        --d;
        ++x;
      }
      --c;
      d=1;
    }
    c=1;
    --a;--b;
  }
  if (x!=3)
    printf (" FUNC5 NG\n");
}
int func6()                        
{
  float a=0.0;
  while (a)
    ;
}
int func7()                        
{
  double a=1.0;
  int flag=0;
  int x=0;
  while (a)
  {
    ++x;
    a=a-1.0;
    continue;
   lab1:
    ++x;
  }
  a=1.0;
  if (flag==1) goto lab2;
  flag=1;
  goto lab1;
 lab2:
  if (x!=3)
    printf (" FUNC7 NG\n");
}
int func8()                        
{
  double a=0.0;
  int x=0;
  while (a)
  {
  }
}
int func9()                        
{
  int *a=0  ;
  int b=1,c=0;
  int x=1;
  while (!a)
  {
    switch(b)
    {
      case 1:
      case 2: ++x;
    }
    ++a;++b;++c;
    if (c==3)
      break;
  }
  if (x!=2)
    printf (" FUNC9 NG\n");
}
int func10()                       
{                             
  long double  ld=1.0;
  long long int  lli=1;
  int x=0;
  while (ld)
  {
    ++x;
    ld=ld-1.0;
  }
  while (lli)
  {
    ++x;
    --lli;
  }
  if (x!=2)
    printf (" FUNC10 NG\n");
}
