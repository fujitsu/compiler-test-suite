#include <stdio.h>
int main()
{
	if ( sizeof('\x7') == 1 && sizeof('\037') == 1 )
            printf("ok\n");
        else
            printf(" sizeof('\\x7') : %d \n sizeof('\\037') : %d \n",
                     sizeof('\x7'), sizeof('\037'));
}

