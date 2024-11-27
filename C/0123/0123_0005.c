#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int init(unsigned long int lv31[], unsigned long int tmp2[]);
int main()
{
	int i ;
	unsigned long int lv31[10] ;
	unsigned long int tmp1[10] ;
	unsigned long int tmp2[10] ;

	init(lv31,tmp2) ;
	for(i=0;i<10;i++)
	{
		tmp1[i]=  1 ^ ( lv31[i]==tmp2[i] ) ;
	}
	for(i=0;i<10;i++){
		printf(" %lu \n",tmp1[i]);
	}
	exit (0);
}
int init(lv31,tmp2)
unsigned long int lv31[],tmp2[];
{
	int i;
	for(i=0;i<10;i++){
		lv31[i]=i%3;
		tmp2[i]=i%2;
	}
}
