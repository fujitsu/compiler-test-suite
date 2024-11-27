#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int write(unsigned lv31[10], unsigned tmp1[10], unsigned tmp2[10]);
int init(unsigned lv31[10], unsigned tmp2[10]);

void dummy() { 
}
int main()
{
	int i ;
	unsigned lv31[10] ;
	unsigned tmp1[10] ;
	unsigned tmp2[10] ;

	init(lv31,tmp2) ;
	for(i=0;i<10;i++)
	{
		tmp1[i]=  1 ^ ( lv31[i]==tmp2[i] ) ;
		
	}
	write(lv31,tmp1,tmp2) ;
	exit (0);
}

int init(lv31,tmp2)
unsigned lv31[10],tmp2[10] ;
{
	int i ;

	for(i=0;i<10;i++)
	{
		lv31[i]= ( i>5 ) ;
		tmp2[i]= ( 3<i ) ;
	}
}

int write(lv31,tmp1,tmp2)
unsigned lv31[10] ;
unsigned tmp1[10] ;
unsigned tmp2[10] ;
{
	int i ;
	printf("  ****  **** (3) ****\n");
	printf(" lv31 \n");
	for (i=0; i<10; i++)
	{
		printf(" %lu ",lv31[i]);
	}
	printf ("\n");
	printf(" tmp1 \n");
	for (i=0; i<10; i++)
	{
		printf(" %lu ",tmp1[i]);
	}
	printf ("\n");
}
