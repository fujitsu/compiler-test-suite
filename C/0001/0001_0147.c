#include <stdio.h>
#include <math.h>

typedef signed char test_t1;
typedef unsigned long   test_t2;

test_t1 from_vv1 = 1;
test_t1 from_vv2 = -1;

void test1 (test_t2 to_vv)
{
  if (from_vv1 != to_vv) printf("NG 1\n");
}

void test2 (test_t2 to_vv)
{
  if (from_vv2 != to_vv) printf("NG 2\n");
}
int main()
{
  test_t2 val;
  val = 1;
  test1 (val);
  val = -1;
  test2 (val);
  
  puts("PASS");
}

