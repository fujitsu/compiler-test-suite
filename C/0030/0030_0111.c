#include <stdio.h>
struct tag {
	int a;
};

struct tag y[] = {1,2};
int main()
{
printf("%d\n", y[0].a);
printf("%d\n", y[1].a);
printf("%d\n", sizeof(y));
}
