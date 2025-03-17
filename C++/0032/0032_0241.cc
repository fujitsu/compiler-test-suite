#include <stdio.h>

struct B {
	int a[5];
	int n;
};

B X = { {}, 10};
int main()
{
  B Y = { {}, 10};

  if (X.a[1] == 0 && X.n == 10 &&
      Y.n == 10)
    printf("ok\n");
  else
    printf("ng %d\n", X.n);

}
