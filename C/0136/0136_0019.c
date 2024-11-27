#include <stdlib.h>
#include <stdio.h>
#include <math.h>








struct type {
	int a ;
	short int b ;
};
int main()
{
	int i,k=0;
	struct type st,*p ;
	st.b=10 ;
	st.a=st.b+10-15 ;
	p=&st ;
	for(i=0 ;i<p->a ; i++)
	{
		printf(" a=%d",p->a) ;
		k++;
	}
	printf("\n k=%d \n",k) ;
	exit (0);
}
