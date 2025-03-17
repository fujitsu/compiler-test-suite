#include <stdio.h>
struct TAG {
  union U {
    float f[4]; 
    long j[2];
  } u;
} ;
  
void test8(struct TAG st ) {
  float f = st.u.f[0] + st.u.f[1] + st.u.f[2] + st.u.f[3];
  if(f==10.0)
    printf("ok\n");
}
int main()
{
  struct TAG st = { 1,2,3,4 };
  
  test8(st);
}
