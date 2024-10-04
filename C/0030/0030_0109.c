#include <stdio.h>
struct tag {
	int i;
	int j;
struct tag *p;
} ;
int main()
{

struct tag x = { .p = &(struct tag){1,2}};
struct tag y = (struct tag){1,2};

printf("%d\n", x.p->i);
printf("%d\n", x.p->j);

}
