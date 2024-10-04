#include <stdio.h>
struct tag {
	int i;
	int j;
struct tag *p;
} ;

struct tag x = { .p = &(struct tag){1,2} };
int main()
{
   struct tag *p = &x;
   printf("%d\n", p->p->i); 
   printf("%d\n", p->p->j); 
}
