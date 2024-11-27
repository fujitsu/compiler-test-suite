#include <stdlib.h>
#include <stdio.h>
#include <math.h>





void sub();
int main()
{
	int i,j,k,l=0;
	
	for(i=0;i<100;i++);
	
	for(j=0;i+10!=j;j+=1)
	{
		if(l==100){
			i=i+1;
		}
		l++;
	}
	for(k=100;(-200)+j!=k;k--)
	{
		if(l==100){
			j=j+1;
		}
		l++;
	}
	for(i=0;i!=j+k;i++)
	{
		if(l==100){
			sub(&k);
		}
		l++;
	}

	printf("%d \n",l);
	exit (0);
}
void sub(int *p)
{
	;
}


