
















#include <stdio.h>


typedef int INT1;
INT1 i1 = 1;
int main()
{
  int count = 0;

  
  typedef int INT2;
  INT2 i2;
  struct INT1 { int a2; } st2;    

  i2 = i1;
  st2.a2 = ++i2;

  {
  
  typedef int INT3;
  INT3 i3;
  struct INT1 st3a;    
  struct INT2 { int a3; }st3b;    

  i3 = i2;
  st3a.a2 = i3++;
  st3b.a3 = i1;

  if ( i3 == 3 && st3a.a2 == 2 && st3b.a3 == 1 )
    count++; 
  else 
    printf("local ng\n");
  }

  
  class CL {
  public:
    typedef int INT4;
    INT4 i4;
    struct INT1 { int a4; }st4a;    
    struct INT2 { int a4; }st4b;
  }cl4;
  
  cl4.i4 = i2++;
  cl4.st4a.a4 = st2.a2; 
  cl4.st4b.a4 = i1;

  if ( i2 == 3 && cl4.i4 == 2 && cl4.st4a.a4 == 2 && cl4.st4b.a4 == 1 )
    count++;
  else
    printf("function ng\n");

  if( count == 2 ) printf("ok\n");
}
