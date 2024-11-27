#include <stdio.h>
#include <stddef.h>
#include <assert.h>

typedef   signed int testi_t;
typedef unsigned int testu_t;

#ifdef __GNUC__
struct __attribute__ ((packed)) AI {
  char c;
  testi_t i;
};
struct __attribute__ ((packed)) AU {
  char c;
  testu_t u;
};
#else
#pragma pack(1)
struct AI {
  char c;
  testi_t i;
};
#pragma pack(1)
struct AU {
  char c;
  testu_t u;
};
#endif

struct AI sti = { 1, 2 };
struct AU stu = { 1, 2 };

void test_i()
{
  sti.i = sti.i + 1;
}

void test_u()
{
  stu.u = stu.u + 1;
}
int main()
{
  assert( offsetof(struct AI, i) == 1 );
  assert( offsetof(struct AU, u) == 1 );
  test_i();
  test_u();

  if( sti.i == 3 && stu.u == 3 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
