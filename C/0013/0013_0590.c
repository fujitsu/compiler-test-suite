                                                             
#include <stdio.h>                                              

struct SUB_SHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct ESHS00JW03 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :3;
};

struct ESHS00JW03 eshs00jw03_0 = { { 1, 2 } };
struct ESHS00JW03 eshs00jw03_1 = { { 1 } };

struct ESHS00JW29 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :29;
};

struct ESHS00JW29 eshs00jw29_0 = { { 1, 2 } };
struct ESHS00JW29 eshs00jw29_1 = { { 1 } };

struct ESHS00JW00 {
	struct SUB_SHB00HW00 m1;
	unsigned long   :0;
};

struct ESHS00JW00 eshs00jw00_0 = { { 1, 2 } };
struct ESHS00JW00 eshs00jw00_1 = { { 1 } };

int main() {

	printf("%u\n"  , eshs00jw03_0.m1.m1);
	printf("%lu\n" , eshs00jw03_0.m1.m2);
	printf("\n");
	printf("%u\n"  , eshs00jw03_1.m1.m1);
	printf("\n");

	printf("%u\n"  , eshs00jw29_0.m1.m1);
	printf("%lu\n" , eshs00jw29_0.m1.m2);
	printf("\n");
	printf("%u\n"  , eshs00jw29_1.m1.m1);
	printf("\n");

	printf("%u\n"  , eshs00jw00_0.m1.m1);
	printf("%lu\n" , eshs00jw00_0.m1.m2);
	printf("\n");
	printf("%u\n"  , eshs00jw00_1.m1.m1);
	printf("\n");

	return 0;
}
