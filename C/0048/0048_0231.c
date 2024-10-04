#include <stdio.h>
void func1();
void func2();
void func3();
void func4();
void func5();
void func6();
void func7();
void func8();
int  func9();
void func10();
void func11();
void func12();

int main()
{
  printf (" START\n");
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
  printf (" END\n");
}
void func1()                        
{
  int a  ;
  int x=0;
  for (a=0;a<10;++a)
   ++x;

  if (x!=10)
    printf (" FUNC1 NG\n");
}
void func2()                        
{
  int x=0,y=0;
  int a,b;
  for (a=0,b=0; ++b,a<5; ++a,++b)
  {
    x=a;
    y=b;
  }
  if (x!=4|| y!=9)
    printf (" FUNC2 NG\n");
}
void func3()                        
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
    printf (" FUNC3 NG\n");
}
void func4()                        
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
    printf (" FUNC4 NG\n");
}
void func5()                        
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
    printf (" FUNC5 NG\n");
}
void func6()                        
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
    printf (" FUNC6 NG\n");
}
void func7()                        
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
    printf (" FUNC7 NG\n");
}
void func8()                        
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
    printf (" FUNC8 NG\n");
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
        printf (" FUNC9 NG\n");
      return 0;
    }
    ++a;
    ++x;
  }
}
void func10()                       
{
  int x=0;
  int a,b=0;
  for (a=0;a||b;++a)
  {
  }
  if (x!=0)
    printf (" FUNC10 NG\n");
}
void func11()                       
{
  int a ;
  for (a=0; a<10 ;++a)
    ;
  if (a!=10)
    printf (" FUNC11 NG\n");
}
void func12()                       
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
    printf (" FUNC12 NG\n");
}
