#include <stdio.h>
struct TAG {
  int i;
} ;

void foo(struct TAG st)
{
  printf("%d \n",st.i);
}
int main()
{
  struct TAG st;
  st.i = 1;
  foo(st);
}
