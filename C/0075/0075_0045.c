#include <stdio.h>
#include <stdlib.h>

void  pr_dummy() { puts("test "); }
int main()
{
    int i=0,j=0 ;
    pr_dummy() ;
    do {
	do {
	    pr_dummy() ;
	    j++;
	} while (j<5) ;
	pr_dummy() ;
	i++;
    } while (i<2) ;

    exit(0) ;
}

