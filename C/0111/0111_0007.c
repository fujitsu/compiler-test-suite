#include <stdio.h>
int sub(foo)
int foo;
{

  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  ++foo; 
  if (foo != 35)
    {
      printf("NG \n");
    }else{
      printf("OK \n");
    }
}
int get(a)
int a;
{
 return a;
}
int main()
{
  int foo;
  foo=get(0);
  sub(foo);
}




