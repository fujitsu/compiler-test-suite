#include <stdio.h>

struct tag1 { short int a;} st    ;
    union  tag2 { int b; char c;} un ;
int main()
{
  int   func1();       
  int   func2();       
  int   func3();       
  int   func4();       
  int   func5();       
  int   func6();       
  int   func7();       
  int   func8();       
  int   func9(int);    
  int   func10(int);   
  int   func11(void);  
  int   func12(long int); 
  int   func13();      

  printf(" START\n") ;
  {
    int a=1; float b=1.0; char cc,*c=&cc  ; double d[1] ;
    *c=1; d[0]=1.0;
    if (func1(a,b,c,d)!=4)
      printf(" FUNC1 NG\n");
  }
  {
    st.a=1 ;
    un.b=1 ;
    if (func2(st,un) !=2 )
      printf(" FUNC2 NG\n");
  }
  {
    int a=0;
    if (func3(a) !=0 )
      printf(" FUNC3 NG\n");
  }
  {
    int a=0;
    if (func4(a) !=1 )
      printf(" FUNC4 NG\n");
  }
  {
    long int  a ;
    a=1;
    if (func6(a) != 1)
      printf(" FUNC6 NG\n");
  }
  {
    if (func7()  != 1)
      printf(" FUNC7 NG\n");
  }
  {
    int a=0;
    if (func8(a) != 0)
      printf(" FUNC8 NG\n");
  }
  {
    int a=0;
    if (func9(a) !=0 )
      printf(" FUNC9 NG\n");
  }
  {
    int a=0;
    if (func10(a) !=1 )
      printf(" FUNC10 NG\n");
  }
  {
    long int  a ;
    a=1;
    if (func12(a) != 1)
      printf(" FUNC12 NG\n");
  }
  {
    if (func13()  != 1)
      printf(" FUNC13 NG\n");
  }

  printf(" NORMAL END\n");
}
int func1(a,b,c,d)
int a; float b; char *c; double d[1];
{
  return(a+b+*c+(int)d[0]);
}
int func2( struct tag1 st ,union tag2 un )
{
  return( st.a+un.b );
}
int func3( a )
  int a;
{
  return( a) ;
}
int func4( a )
  int a;
{
  return 1 ;
}
int func5()
{
  int a ;
}
int func6(a)
long int a;
{
  return a;
}
int func7()
{
  return 1;
}
int func8( int a)
{
  return a;
}
int func9(int a)
{
  return( a) ;
}
int func10(int a)
{
  return 1 ;
}
int func11(void)
{
  int a ;
}
int func12(long int a)
{
  return a;
}
int func13(void)
{
  return 1;
}
