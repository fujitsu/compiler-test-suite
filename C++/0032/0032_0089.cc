#include <stdio.h>
int main()
{
	char c = 1;
	const int & ri = c; 
	int i = 1;
	const char & rc = i; 

	if ((void*)&ri != (void*)&c)
	  ;
	else
	  printf("ng\n");

	if ((void*)&rc != (void*)&i)
	  ;
	else
	  printf("ng\n");

	printf("ok\n");
}
