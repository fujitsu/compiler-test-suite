#include <stdlib.h>


#include <stdio.h>
int main()
{
	long long int a[10]={0x7fffffffffffffffll,0x7fffffffffffffffll,
			     0x7fffffffffffffffll,0x7fffffffffffffffll,
			     0x7fffffffffffffffll,0x7fffffffffffffffll,
			     0x7fffffffffffffffll,0x7fffffffffffffffll,
			     0x7fffffffffffffffll,0x7fffffffffffffffll};
	long long int b[10];
	long int i;

	for(i=0;i<10;i++) {
		if ( i > 5 )
		b[i] = ~0x8000000000000000ll ;
	}
	
	for(i=0;i<10;i++)
		if ( i > 5 )
		if( b[i] == a[i] ) {
			printf("***** Element %d OK *****\n",i);
		} else {
			printf("***** Element %d NG *****     ",i);
			printf("b[%d] = %x %x\n",i,*(long int *)&b[i],*(((long int *)&b[i])+1)) ;
		}
	
	exit(0);
}