#include <stdio.h>
#include <stddef.h>
#include <assert.h>

#ifdef __GNUC__
struct __attribute__ ((packed)) A {
  short c;
  float i;
};
#else
#pragma pack(1)
struct A {
  short c;
  float i;
};
#endif

struct A st = { 1, 2 };

void test()
{
  st.i = st.i + 1.0;
}
int main()
{
  assert( offsetof(struct A, i) == 2 );

  test();

  if( st.i == 3 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
