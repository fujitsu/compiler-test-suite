                                                             
#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union EUHS00JW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :3;
};

union EUHS00JW03 euhs00jw03_0 = { { 1, 2 } };
union EUHS00JW03 euhs00jw03_1 = { { 1 } };

union EUHS00JW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :29;
};

union EUHS00JW29 euhs00jw29_0 = { { 1, 2 } };
union EUHS00JW29 euhs00jw29_1 = { { 1 } };

union EUHS00JW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
};

union EUHS00JW00 euhs00jw00_0 = { { 1, 2 } };
union EUHS00JW00 euhs00jw00_1 = { { 1 } };

int main() {

	printf("%u\n"  , euhs00jw03_0.m1.m1);
	printf("%lu\n" , euhs00jw03_0.m1.m2);
	printf("\n");
	printf("%u\n"  , euhs00jw03_1.m1.m1);
	printf("\n");

	printf("%u\n"  , euhs00jw29_0.m1.m1);
	printf("%lu\n" , euhs00jw29_0.m1.m2);
	printf("\n");
	printf("%u\n"  , euhs00jw29_1.m1.m1);
	printf("\n");

	printf("%u\n"  , euhs00jw00_0.m1.m1);
	printf("%lu\n" , euhs00jw00_0.m1.m2);
	printf("\n");
	printf("%u\n"  , euhs00jw00_1.m1.m1);
	printf("\n");

	return 0;
}
