#include <stdio.h>
#include <stdlib.h>

void sub()
{
		if( *(int *)1 -= *(int *)2 )		*(int *)2 = *(int *)3 ;
		if( *(int *)2 -= *(int *)1 )		*(int *)2 = *(int *)3 ;
		while (   !(*(int *)1 -= *(int *)1? 0:1)
		        ||!(*(int *)1 -= *(int *)1? 0:1))
		{
			*(int *)2 = *(int *)3 ;
			*(int *)2 = *(int *)3 ;
			while (!(*(int *)1 -= *(int *)1? 0:1))
				*(int *)2 = *(int *)3 ;
		}
}

int main()
{
puts("TEST OK!!");
exit(0) ;
}
