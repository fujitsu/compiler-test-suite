#include <stdio.h>

struct TAG {
  double  dummy;
  _Bool b;
};

void foo(int i0,int i1,int i2,int i3,int i4,int i5,struct TAG st,int i)
{
  if( st.b != 1 )  {
    printf("NG %d\n",i);
  }
}
int main()
{
  struct TAG st;

  foo(0,1,2,3,4,5,(struct TAG ){ 0, 1 },1);

  st.b = 1;
  foo(0,1,2,3,4,5,st,2);

  puts("PASS");
}
