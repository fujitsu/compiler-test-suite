#include <stdlib.h>
#include<stdio.h>
#include<math.h>
int main()
{
	int i,even,odd;

	even=0;
	odd=0;
	for(i=0;i<100;i++)
	{
		if(i%2==0){
			even=even+i;
		}
		else
			odd=odd+i;
	}
	printf("%7d %7d\n",even,odd);
	exit (0);
}

