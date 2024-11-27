#include <stdlib.h>
#include <stdio.h>
#include <math.h>


static void  pri_ok(ptr)
char *ptr ;
{
	if (ptr) printf("=== %s ===\n",ptr) ;
	else     puts("*** test is NG ***\n") ;
}
static void call_pri(ptr)
char *ptr ;
{
	if (ptr) pri_ok(ptr) ;
	else     puts("*** test is NG ***\n") ;
}
static void call_pre_pri(ptr)
char *ptr ;
{
	if (ptr) pri_ok(ptr) ;
	else     puts("*** test is NG ***\n") ;
}
int main()
{
	char *ptr ;
	ptr = "test is ok" ;
	call_pre_pri(ptr) ;
exit (0);
}
