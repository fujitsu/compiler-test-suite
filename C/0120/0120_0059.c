#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int total=0,count=0,flg=1,i;
	int data[]={
		1,4,5,8,9,-4,5,8,9,-4	};
	while (flg)
	{
		for(i=0;i<10;i++)
		{
			if (data[i] < 0) break;
			total +=data[i];
			count +=1;
		}
		flg=0;
	}
	printf("no. of data = %d,total= %d\n", count,total);
	exit (0);
}
