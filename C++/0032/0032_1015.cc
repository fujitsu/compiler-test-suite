

#include <stdio.h>

enum { E32p23a=4 }; 
int main()
{
	if ( ::E32p23a == 4)
            printf("ok\n");
        else
            printf("ng ::E32p23a : %d \n", ::E32p23a);
}
