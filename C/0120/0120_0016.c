#include <stdlib.h>
#include <math.h>
#include<stdio.h>
#define SIZE 20
#define TRUE  1
#define FALSE 0
int main()
{
	int a[SIZE+1];
	char flg;
	int *i;
	int il;
	for (i = &a[0],il=0;i<&a[SIZE];i+=1,il+=1)
		*i = SIZE - il;
	flg = FALSE;
	while (flg == FALSE)
	{
		flg = TRUE;
		for(i = &a[0];i<&a[SIZE-1];i+=1)
			if (*i < *(i+1))
			{
				int ws;
				ws = *i ;
				*i = *(i+1);
				*(i+1) = ws;
				flg = FALSE;
			}
	}
	for(i= &a[0];i<&a[SIZE];)
		printf("%d\n",*i++);
	exit (0);
}

