

#include <stdio.h>
int main()
{
	char c = 1;
	const int & r = c; 
	if( r == 1 )
            printf("ok\n");
        else
            printf("ng r : %d \n", r);
}
