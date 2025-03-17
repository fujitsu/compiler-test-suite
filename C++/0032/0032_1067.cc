#include <stdio.h>

class B_1232p62 {
public:
	operator int() { return 12; }
	operator char *() { return "12"; }
};

class D_1232p62 : public B_1232p62 {
public:
	operator int() { return 32; }
	operator const char *() { return "62"; }
};
int main()
{
        int count = 0;
	D_1232p62 d;


	char *p = d;
	if( *p == '1' ) count++;
        else printf("ng *p = %c\n", *p);

	const char *q = d;
	if( *q == '6' ) count++;
        else printf("ng *q = %c\n", *q);

        if( count == 2 ) printf("ok\n");
}
