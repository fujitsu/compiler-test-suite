#include <stdio.h>
struct TAG {
  union U {
    int i[4];
    long j[2];
  } u;
} ;
  

void test8(struct TAG st ) {
  int i;
  st.u.i[0] = 2;
  i = st.u.i[1];
  i = st.u.i[2];
  i = st.u.i[3];
}
int main()
{
  int i;
  struct TAG st = { 1,2,3,4 };
  test8(st);
  i = st.u.i[0];
  if(i==1)
    printf("ok\n");

}
