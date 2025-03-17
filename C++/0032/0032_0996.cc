#include <stdio.h>
int main()
{
	struct B { int bi; };
	int B::*bpm1 = 0;
	int B::*bpm2 = &B::bi;

	if( bpm1 != bpm2 )
            printf("ok\n");
        else
            printf("ng bpm1 : %d , bpm2 : %d \n", bpm1, bpm2);
}
