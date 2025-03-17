#include <stdio.h>
struct TAG {
  int i;
  int j;
} ;

void foo(struct TAG st)
{
  printf("%d %d \n",st.i,st.j);
}
int main()
{
  struct TAG st;
  st.i = 1;
  st.j = 2;
  foo(st);
}
