#include <stdio.h>
#include <stddef.h>
#include <assert.h>

#ifdef __GNUC__
struct __attribute__ ((packed)) A {
  char c;
  long double i;
};
#else
#pragma pack(1)
struct A {
  char c;
  long double i;
};
#endif

struct A st = { 1, 2 };

void test()
{
  st.i = st.i + 1.0;
}
int main()
{
  assert( offsetof(struct A, i) == 1 );

  test();

  if( st.i == 3 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
