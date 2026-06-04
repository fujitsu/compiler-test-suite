

#include "039.h"

int var1;
ADDR1 add1;
ADDR2 add2;
#include <stdio.h>
int main() {
	int var2;
	struct ADDR1 obj0;
	ADDR1 obj1;
	ADDR2 obj2;
	struct ADDR1 *ptr1;
	ADDR2 *ptr2;

	ptr1=&obj1;
	ptr2=&obj2;
	ptr1=&obj0;

	ptr1->a4=&var1;

	ptr1=&add1;
	ptr2=&add2;

	ptr1->a4=&var2;

        puts("ok");
}
