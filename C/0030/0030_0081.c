#include <stdio.h>
struct tag {
  int i;
  int j;
} ;
	int a = 10;
int x[] = {[10]=10};
int main()
{
	printf("%d\n", x[10]);
	printf("%d\n", sizeof(x));
}

