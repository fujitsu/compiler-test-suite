#include <stdio.h>



double  bar()
{
  return 1.0;
}

double	foo()
{
	double	r,bar() ;
	int	i ;
	for (i=0; i<2; r=bar(), i++) ;
	return	r ;
}
int main()
{
	printf("*** K017-2 (examine object code) ***\n") ;
}
