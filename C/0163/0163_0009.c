#include <stdio.h>
struct TAG {
  float i;
  float j;
  float k;
  float l;
  float m;
} ;

void foo(struct TAG st)
{
  printf("%d %d \n",(int )st.i,(int )st.j);
  printf("%d %d \n",(int )st.k,(int )st.l);
  printf("%d \n",(int )st.m);
}
int main()
{
  struct TAG st;
  st.i = 1;
  st.j = 2;
  st.k = 3;
  st.l = 4;
  st.m = 5;
  foo(st);
}
