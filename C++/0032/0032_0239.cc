#include <stdio.h>
struct A {};
struct B {
	A a;
	int n;
};

B X = { {}, 10};
int main()
{

  if (X.n == 10)
    printf("ok\n");
  else
    printf("ng %d\n", X.n);

}
