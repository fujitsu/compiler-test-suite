#include <stdio.h>
union TAG {
  long i;
  long j;
} ;

void foo(union TAG st)
{
  printf("%d %d \n",st.i,st.j);
}
int main()
{
  union TAG st;
  st.i = 1;
  st.j = 2;
  foo(st);
}
