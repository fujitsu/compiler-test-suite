#include <stdio.h>
#include <stddef.h>
#include <assert.h>

#ifdef __GNUC__
struct __attribute__ ((packed)) A {
  short c;
  struct B {
    float i;
  } b;
};
#else
#pragma pack(1)
struct A {
  short c;
  struct B {
    float i;
  } b;
};
#endif

struct A st = { 1, {2} };

void test()
{
  st.b.i = st.b.i + 1.0;
}
int main()
{
  assert( offsetof(struct A, b.i) == 1 );

  test();

  if( st.b.i == 3 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
