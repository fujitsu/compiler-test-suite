#include <stdio.h>
#include <stddef.h>
#include <assert.h>

#ifdef __GNUC__
struct __attribute__ ((packed)) A {
  char c[6];
  long double i[1];
};
#else
#pragma pack(1)
struct A {
  char c[6];
  long double i[1];
};
#endif

struct A st = { {1,1,1,1,1,1}, 2 };

void test()
{
  st.i[0] = st.i[0] + 1.0;
}
int main()
{
  assert( offsetof(struct A, i) == 6 );

  test();

  if( st.i[0] == 3 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
