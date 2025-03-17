#include <stdio.h>
struct TAG {
  int i;
  int j;
  int k;
  int l;
  int m;
} ;

void foo(struct TAG st)
{
  printf("%d %d \n",st.i,st.j);
  printf("%d %d \n",st.k,st.l);
  printf("%d \n",st.m);
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
