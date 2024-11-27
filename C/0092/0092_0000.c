#include <stdio.h>




double  bar()
{
  return 1.0;
}

double	foo()
{
	double	bar();
	return	bar()+bar() ;
}
int main()
{
	printf("*** K017-1 (examine object code) ***\n") ;
}
