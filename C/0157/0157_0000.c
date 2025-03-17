#include <stdio.h>



extern       int xx  = 2;  
extern const int xxx = 3;  
int          y;            
int          z = 1;        
const  int   v = 2;        

static int         s;      
static int         t = 1;  
static const int   u = 2;  

int foo() {
  static int         i;         
  static int         j = 1;     
  static const int   k = 2;     

  auto   int         a;         
  auto   int         b = 1;  
  auto   const int   c = 2;  

  a = xxx;
  y = 2;
  a = v;
  s = 5;
  a = 7;
  i = 8;

  if( i   != 8 ) puts("NG9");
  if( j   != 1 ) puts("NG10");
  if( k   != 2 ) puts("NG11");

  if( a   != 7 ) puts("NG12");
  if( b   != 1 ) puts("NG13");
  if( c   != 2 ) puts("NG14");
}
int main()
{
  foo();

  if( xx != 2 )  puts("NG1");
  if( xxx != 3 ) puts("NG2");
  if( y   != 2 ) puts("NG3");
  if( z   != 1 ) puts("NG4");
  if( v   != 2 ) puts("NG5");

  if( s   != 5 ) puts("NG6");
  if( t   != 1 ) puts("NG7");
  if( u   != 2 ) puts("NG8");

  puts("PASS");
}
