#include <stdio.h>
void func11 (void);
void func10 (void);
int func9 (void);
void func8 (void);
void func7 (void);
void func6 (void);
void func5 (void);
void func4 (void);
void func3 (void);
void func2 (void);
void func1 (void);

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
  printf (" END\n");
}
void func1()                        
{
  int a=0;
  int x=0;
  do
   ++x;
  while(a);

  if (x!=1)
    printf (" FUNC1 NG\n");
}
void func2()                        
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
    printf (" FUNC2 NG\n");
}
void func3()                        
{
  short int a=0 ;
  do
    ;
  while (a);
}
void func4()                        
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
    printf (" FUNC4 NG\n");
}
void func5()                        
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
    printf (" FUNC5 NG\n");
}
void func6()                        
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
    printf (" FUNC6 NG\n");
}
void func7()                        
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
    printf (" FUNC7 NG\n");
}
void func8()                        
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
    printf (" FUNC8 NG\n");
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
        printf (" FUNC9 NG\n");
      return 0;
    }
    --a;
    ++x;
  }
  while(a);
}
void func10()                       
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
    printf (" FUNC9 NG\n");
}
void func11()                       
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
    printf (" FUNC11 NG\n");
}
