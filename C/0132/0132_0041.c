#include <stdlib.h>


#include <stdio.h>
int main()
{
	unsigned long long int a[10]={0x7fffffffffffffffll,0x7ffffffffffffffell,
			     0x7ffffffffffffffdll,0x7ffffffffffffffcll,
			     0x7ffffffffffffffbll,0x7ffffffffffffffall,
			     0x7ffffffffffffff9ll,0x7ffffffffffffff8ll,
			     0x7ffffffffffffff7ll,0x7ffffffffffffff6ll};
	unsigned long long int b[10];
	long int i;

	for(i=0;i<10;i++) {
		b[i] = ~a[i] ;
	}
	
	for(i=0;i<10;i++)
		if( b[i] == a[i]^0xffffffffffffffffll ) {
			printf("***** Element %d OK *****\n",i);
		} else {
			printf("***** Element %d NG *****     ",i);
			printf("b[%d] = %x %x\n",i,*(long int *)&b[i],*(((long int *)&b[i])+1)) ;
		}
	
	exit(0);
}
