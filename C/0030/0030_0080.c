#include <stdio.h>
struct tag {
  int i;
  int j;
} ;
int main()
{
	int a = 10;
	printf("%d\n", ((struct tag){.j = a}).j);	
	printf("%d\n", ((struct tag){.i = a + 10}).i);	
}

