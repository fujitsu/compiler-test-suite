#include <stdio.h>
struct TAG {
  float i;
} ;

void foo(struct TAG st)
{
  printf("%d \n",(int )st.i);
}
int main()
{
  struct TAG st;
  st.i = 1;
  foo(st);
}
