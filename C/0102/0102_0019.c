#include <stdio.h>
#include <memory.h>
#include <float.h>

double zero = -0.0;
double res[5];
long long ans[5] = { 0, 0x8000000000000000LL, 0x8000000000000000LL, 0, 0 };

void test(double x)
{
  res[0] = x-x;
  res[1] = x*0;
  res[2] = x-0;
  res[3] = x+0;
  res[4] = 0-x;
}

int main()
{
  test(zero);

  if (memcmp(res, ans, sizeof(res)) == 0 ) {
    puts("PASS");
  }
  else {
    fprintf(stderr, "NG %llx %llx %llx %llx %llx\n",
	    *(long long *)&res[0],
	    *(long long *)&res[1],
	    *(long long *)&res[2],
	    *(long long *)&res[3],
	    *(long long *)&res[4]);
  }
  return 0;
}
