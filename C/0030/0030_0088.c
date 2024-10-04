#include <stdio.h>
struct tag {
	int i;
	int f[];
};

union utag {
	struct tag k;
} u;
int main()
{
	printf("%d\n", sizeof(struct tag));
	printf("%d\n", sizeof(union utag));
}
