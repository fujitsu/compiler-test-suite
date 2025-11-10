
	
	
	

#include <stdio.h>                                              

union EUHA01JW03 {
	unsigned char m1[3];
	unsigned long   :3;
};

union EUHA01JW03 euha01jw03_0 = { "12" };
union EUHA01JW03 euha01jw03_1 = { "1" };

union EUHA01JW29 {
	unsigned char m1[3];
	unsigned long   :29;
};

union EUHA01JW29 euha01jw29_0 = { "12" };
union EUHA01JW29 euha01jw29_1 = { "1" };

union EUHA01JW00 {
	unsigned char m1[3];
	unsigned long   :0;
};

union EUHA01JW00 euha01jw00_0 = { "12" };
union EUHA01JW00 euha01jw00_1 = { "1" };

int lto_sub_595() {

	printf("%s\n"  , euha01jw03_0.m1);
	printf("\n");
	printf("%s\n"  , euha01jw03_1.m1);
	printf("\n");

	printf("%s\n"  , euha01jw29_0.m1);
	printf("\n");
	printf("%s\n"  , euha01jw29_1.m1);
	printf("\n");

	printf("%s\n"  , euha01jw00_0.m1);
	printf("\n");
	printf("%s\n"  , euha01jw00_1.m1);
	printf("\n");

	return 0;
}
