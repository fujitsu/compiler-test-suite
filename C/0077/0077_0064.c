#include <stdio.h>

struct TAG {
  int a[2];
} st, foo();

int main()
{
  int ans = 0;
  long long res;
  st = foo();
  if( st.a[0] == 1 && st.a[1] == 2 ) ;
  else                         ans--;


  if( ans >= 0 ) puts("OK");
  else           puts("NG");
}

struct TAG foo() 
{
  struct TAG st;
  st.a[0] = 1;
  st.a[1] = 2;
  return st;
}
