#include <stdio.h>
int main()
{
	struct B { int bi; };
	int B::*bpm1 = 0;
	int B::*bpm2 = 0;

	if( bpm1 == bpm2 )
            printf("ok\n");
        else
            printf(" bpm1 : %d \n bpm2 : %d \n", bpm1, bpm2);
}
