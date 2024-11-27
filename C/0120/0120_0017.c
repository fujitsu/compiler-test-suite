#include <stdlib.h>
#include <math.h>
#include<stdio.h>
#define SIZE 20
#define  TRUE 1
#define FALSE 0
int main()
{
	int a[SIZE];
	int i;
	char  flg;
	for(i=0;i<SIZE;i=i+1)
	{
		a[i] = SIZE - i;
	}
	flg=FALSE;
	while  (flg == FALSE)
	{
		flg = TRUE;
		for(i=0 ; i<SIZE-1;i+=1)
			if (a[i] > a[i+1])
			{   
				int ws;
				ws = a[i];
				a[i] = a[i+1];
				a[i+1]=ws;
				flg = FALSE;
			}
	}
	for(i=0;i<SIZE;i++)
		printf("%d\n",a[i]);
	exit (0);
}
        
