#include <stdio.h>
int main()
{
        int count = 0;

	char a = 1;
	static short b = a + 1;
	unsigned char au = { 1, };
	static unsigned short bu = { (unsigned short)(au + 1), };
	signed char as ( 1 );
	static signed short bs ( as + 1 );

	if( b == 2 ) count++; else printf("ng b: %d\n", b);

	if( bu == 2 ) count++; else printf("ng bu: %d\n", bu);

	if( bs == 2 ) count++; else printf("ng bs: %d\n", bs);

        if( count == 3 ) printf("ok\n");
}

