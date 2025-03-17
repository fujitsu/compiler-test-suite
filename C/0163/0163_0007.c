#include <stdio.h>
struct TAG {
  float i;
  float j;
} ;

void foo(struct TAG st)
{
  printf("%d %d \n",(int )st.i,(int )st.j);
}
int main()
{
  struct TAG st;
  st.i = 1;
  st.j = 2;
  foo(st);
}
