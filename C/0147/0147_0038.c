#include <stdio.h>

struct TAG {
  char  dummy;
  _Bool b;
};

void foo(struct TAG st,int i)
{
  if( st.b != 1 )  {
    printf("NG %d\n",i);
  }
}
int main()
{
  struct TAG st;

  foo((struct TAG ){ 0, 1 },1);

  st.b = 1;
  foo(st,2);

  puts("PASS");
}
