#include <stdio.h>
static int a;
struct tag { int a;} ;
enum   etag {e1,e2,e3};
union utag { int a;} ;

int main()
{
  int                func1();
  float              func2();
  double             func3();
  double             func4();
  float              func5();
  int               *func6();
  struct tag         func7();
  void               func8();
  int                func9();
  union utag         func10();
  enum etag          func11();
  union utag        *func12();
  struct tag        *func13();
  void               func14();
  char*              func15();
  unsigned char      func16();
  unsigned int       func17();
  unsigned short int func18();
  unsigned long  int func19();
  int                func20();
  short int          func21();
  long  int          func22();
  float              func23();
  double             func24();
  int                func25();
  int                func26();
  int                func27();
  int                func28();
  int                func29();
  int                func30();
  int                func301();
  char        func31();
  int         func32();
  short int   func33();
  long int    func34();
  unsigned char       func35();
  unsigned int        func36();
  unsigned short int  func37();
  unsigned long int   func38();
  float               func39();
  double              func40();

  printf (" START\n");

  if (func1()!=0)
    printf (" FUNC1 NG\n");
  if (func2()!=3.0)
    printf (" FUNC2 NG\n");
  if (func3()!=3.0)
    printf (" FUNC3 NG\n");
  if (func4()!=4.0)
    printf (" FUNC4 NG\n");
  if (func5()!=4.0)
    printf (" FUNC5 NG\n");
  if (*func6()!=0)
    printf (" FUNC6 NG\n");
  if (func7().a !=10)
    printf (" FUNC7 NG\n");
  if (func9()  != 1)
    printf (" FUNC9 NG\n");
  if (func9()  != 2)
    printf (" FUNC9 NG\n");
  if (func9()  != 3)
    printf (" FUNC9 NG\n");
  if (func10().a!=10)
    printf (" FUNC10 NG\n");
  if (func11() != 0)
    printf (" FUNC11 NG\n");
  if ( (*func12()).a!=1)
    printf (" FUNC12 NG\n");
  if ( (*func13()).a!=1)
    printf (" FUNC13 NG\n");
  if (func16()!=0)
    printf (" FUNC16 NG\n");
  if (func17()!=1)
    printf (" FUNC17 NG\n");
  if (func18()!=0)
    printf (" FUNC18 NG\n");
  if (func19()!=0)
    printf (" FUNC19 NG\n");
  if (func20()!=4)
    printf (" FUNC20 NG\n");
  if (func21()!=0)
    printf (" FUNC21 NG\n");
  if (func22()!=0)
    printf (" FUNC22 NG\n");
  if (func23()!=2.0)
    printf (" FUNC23 NG\n");
  if (func24()!=0.0)
    printf (" FUNC24 NG\n");
  if (func25()!=1)
    printf (" FUNC25 NG\n");
  if (func26()!=0)
    printf (" FUNC26 NG\n");
  if (func27()!=0)
    printf (" FUNC27 NG\n");
  if (func28()!=1)
    printf (" FUNC28 NG\n");
  if (func29()!=0)
    printf (" FUNC29 NG\n");
  if (func30()!=2)
    printf (" FUNC30 NG\n");
  if (func301()!=3)
    printf (" FUNC301 NG\n");
  if (func31()!=1)
    printf (" FUNC31 NG\n");
  if (func32()!=1)
    printf (" FUNC32 NG\n");
  if (func33()!=1)
    printf (" FUNC33 NG\n");
  if (func34()!=1)
    printf (" FUNC34 NG\n");
  if (func35()!=1)
    printf (" FUNC35 NG\n");
  if (func36()!=1)
    printf (" FUNC36 NG\n");
  if (func37()!=1)
    printf (" FUNC37 NG\n");
  if (func38()!=1)
    printf (" FUNC38 NG\n");
  if (func39()!=1.0)
    printf (" FUNC39 NG\n");
  if (func40()!=1.0)
    printf (" FUNC40 NG\n");

  printf (" END\n");
}
int func1()                        
{
  return (0);
}
float func2()                  
{                             
  float x=0.0;
  int i;
  for(i=0;i<10;++i)
  {
    if (i==3)
      return (x);
    x=x+1.0;
  }
}
double func3()                 
{                             
  double x=0.0;
  int i=0;
  while(i<10)
  {
    if (i==3)
      return (x);
    x=x+1.0;
    ++i;
  }
}
double func4()                 
{                             
       double x=0.0;
  int i=0;
  do
  {
    x=x+1.0;
    if (i==3)
      return (x);
    ++i;
  }
  while(i<10);
}
float func5()                  
{                             
  float x=0.0;
  int i=0,j=0;
  for(;;)
  {
    while(i<0);
    {
      do
      {
        x=x+1.0;
        if (j==3)
          return x;
        ++j;
      }
      while(j<10);
      ++i;
    }
  }
  return 0.0;
}
int *func6()                   
{
  a=0;
  return (&a);
}
struct tag func7()             
{
  struct tag st;
  st.a=10;
  return (st);
}
void func8()                   
{
  return ;
}
int func9()                        
{
  ++a;
  switch(a)
  {
    case 1: return 1;
    case 2: return 2;
    case 3: return 3;
  }
}
union utag func10()            
{
  union utag un;
  un.a=10;
  return (un);
}
enum etag func11()             
{
  int a;
  for (a=0;a<10;++a)
  {
    if (a==4)
      return 0;
  }
}
union utag *func12()           
{
  static union utag un;
  un.a=1 ;
  return (&un);
}
struct tag *func13()           
{
  static struct tag st;
  st.a=1 ;
  return (&st);
}
void func14()                   
{
  return;
}
char *func15()                 
{
  return "abc";
}
unsigned char func16()         
{
  unsigned char a[3];
  a[0]=0;
  return a[0];
}
unsigned int  func17()         
{
  unsigned int a=1;
  return a++;
}
unsigned short int func18()    
{
  unsigned short a,b=0;
  return a=b;
}
unsigned long int  func19()    
{
  unsigned long int a=1;
  return --a;
}
int func20()                   
{
  return sizeof(int);
}
short int func21()             
{
  int a=1;
  return !a;
}
long int  func22()             
{
  int a=0;
  return (long int)a;
}
float func23()                 
{
  float a=2.0,b=1.0 ;
  return a*b;
}
double func24()                
{
  double a=2.0,b=2.0;
  return a-b;
}
int func25()                   
{
  int a=4;
  return a>>2;
}
int func26()                   
{
  int a=1,b=2;
  return  a>b;
}
int func27()                   
{
  int a=1,b=2;
  return  a==b;
}
int func28()                   
{
  int a=1,b=0;
  return  a||b;
}
int func29()                   
{
  int a=1,b=0,c=1;
  return  a?b:c;
}
int func30()                   
{
  int a=1,b=1;
  return  a+=b;
}
int func301()                  
{
  int a=1,b=1;
  return  ++a,a+b;
}
char func31()
{
  int a=1;
  return a;
}
int         func32()
{
  int a=1;
  return a;
}
short int   func33()
{
  int a=1;
  return a;
}
long int    func34()
{
  int a=1;
  return a;
}
unsigned char       func35()
{
  int a=1;
  return a;
}
unsigned int        func36()
{
  int a=1;
  return a;
}
unsigned short int  func37()
{
  int a=1;
  return a;
}
unsigned long int   func38()
{
  int a=1;
  return a;
}
float               func39()
{
  double a=1.0;
  return a;
}
double              func40()
{
  float a=1.0;
  return a;
}
