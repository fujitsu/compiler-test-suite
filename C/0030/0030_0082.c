#include <stdio.h>
struct tag {
  int i;
  int j;
} ;
	int a = 10;
int main()
{
	int x =  ((struct tag){.j = a}).j;
	printf("%d\n", x);
	printf("%d\n", ((struct tag){.j = a}).j);	
	printf("%d\n", ((struct tag){.i = a + 10}).i);	
}

