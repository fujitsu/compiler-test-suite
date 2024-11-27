#include <stdio.h>

struct TAG {
  int i;
  int j;
} st, foo();

int main()
{
  int ans = 0;
  long long res;
  st = foo();
  if( st.i == 1 && st.j == 2 ) ;
  else                         ans--;


  if( ans >= 0 ) puts("OK");
  else           puts("NG");
}

struct TAG foo() 
{
  struct TAG st;
  st.i = 1;
  st.j = 2;
  return st;
}
