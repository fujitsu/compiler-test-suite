#include <stdio.h>
struct A {int m;};
struct B {
	A a;
	int n;
};

B X = { {}, 10};
int main()
{
B Y = { {}, 10};
  if (X.a.m == 0 && X.n == 10 &&
      Y.n == 10)
    printf("ok\n");
  else
    printf("ng\n");

}
