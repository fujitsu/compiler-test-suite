#include <stdio.h>

typedef double test_t ;

test_t foo(test_t x, test_t y)
{
  return x == y ? 1 : 0;
}

int n = 3;

test_t input[3] = { -1, 0, 1 };
test_t output[3][3] = {
  { 1, 0, 0 },
  { 0, 1, 0 },
  { 0, 0, 1 }
};

int main()
{
  int i, j;
  for(i=0;i<n;i++) {
    for(j=0;j<n;j++) {
      if (foo(input[i], input[j]) != output[i][j]) {
	puts("NG");
      }
    }
  }

  puts("PASS");
}
