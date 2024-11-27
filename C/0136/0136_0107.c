#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i=0,m=0;
	while(i<10)
	{
label1:
		;
		if (i>m) {
			goto label2;
		}
		if (m>100) {
			goto label1;
		}
label2:
		;
		i++;
		m++;
	}
	printf("%d\n",m);
	exit (0);
}

