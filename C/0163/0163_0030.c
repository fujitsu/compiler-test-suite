#include <stdio.h>
#include <string.h>

union TAG16d2 {
  long long  a0;
  double  a1;
} ;

union TAG16d2 test16d2(double d1,double d2)
{
  union TAG16d2 st;
  st.a0 = d1;
  st.a1 = d2;
  return st;
}
int main()
{
  union TAG16d2 st16d2, st;
  st16d2.a1 = 2;

  st = test16d2(1.,2.);
  if( memcmp(&st,&st16d2,sizeof(st)) == 0 ) {
     puts("OK");
  }
  else { 
     puts("NG");
  }
}
