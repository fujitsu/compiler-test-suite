#include <stdio.h>
#include <string.h>

struct TAG16d2 {
  double  a0;
  long long  a1;
} ;

struct TAG16d2 test16d2(double d1,double d2)
{
  struct TAG16d2 st;
  st.a0 = d1;
  st.a1 = d2;
  return st;
}
int main()
{
  struct TAG16d2 st16d2 = { 1,2 }, st;

  st = test16d2(1.,2.);
  if( memcmp(&st,&st16d2,sizeof(st)) == 0 ) {
     puts("OK");
  }
  else { 
     puts("NG");
  }
}
