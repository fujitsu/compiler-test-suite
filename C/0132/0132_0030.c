#include <stdlib.h>


#include <stdio.h>
int main()
{
	long long int a[10]={0x7fffffff00000000ll,0x7fffffff00000000ll,
			     0x7fffffff00000000ll,0x7fffffff00000000ll,
			     0x7fffffff00000000ll,0x7fffffff00000000ll,
			     0x7fffffff00000000ll,0x7fffffff00000000ll,
			     0x7fffffff00000000ll,0x7fffffff00000000ll};
	long long int c[10]={0x00000000ffffffffll,0x00000000fffffffell,
			     0x00000000fffffffdll,0x00000000fffffffcll,
			     0x00000000fffffffbll,0x00000000fffffffall,
			     0x00000000fffffff9ll,0x00000000fffffff8ll,
			     0x00000000fffffff7ll,0x00000000fffffff6ll};
	long long int b[10];
	long int i;

	for(i=0;i<10;i++) {
		b[i] = a[i] | c[i];
	}
	
	for(i=0;i<10;i++)
		if( b[i] == 0x7fffffffffffffffll-i ) {
			printf("***** Element %d OK *****\n",i);
		} else {
			printf("***** Element %d NG *****     ",i);
			printf("b[%d] = %x %x\n",i,*(long int *)&b[i],*(((long int *)&b[i])+1)) ;
		}
	
	exit(0);
}

