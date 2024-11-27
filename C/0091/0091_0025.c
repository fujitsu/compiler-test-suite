#include <stdio.h>
#include <stddef.h>
#include <assert.h>

char x;

#ifdef __GNUC__
struct __attribute__ ((packed)) A {
  char c;
  char * i;
};
#else




struct A {
  char c;
  char * i;
};
#endif

struct A st = { 1, &x };

void test()
{
  st.i = st.i + 1;
}
int main()
{
  test();

  if( (long )st.i == (long )(&x + 1) ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
