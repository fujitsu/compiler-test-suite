#include <stdio.h>
struct TAG {
  long i[2];
} ;

void foo(struct TAG st)
{
  printf("%d %d \n",st.i[0],st.i[1]);
}
int main()
{
  struct TAG st;
  st.i[0] = 1;
  st.i[1] = 2;
  foo(st);
}
