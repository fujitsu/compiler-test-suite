#include <stdio.h>
struct tag {
  int i;
  int j;
} ;
int main()
{
	printf("%d\n", ((struct tag){.j = 10}).j);	
	printf("%d\n", ((struct tag){.i = 10}).i);	
}

