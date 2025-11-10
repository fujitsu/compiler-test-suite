
	
	
	

#include <stdio.h>                                              

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

struct ESHU00JW03 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
};

struct ESHU00JW03 eshu00jw03_0 = { { 1 } };

struct ESHU00JW29 {
	union SUB_UHB00HW00 m1;
	unsigned long   :29;
};

struct ESHU00JW29 eshu00jw29_0 = { { 1 } };

struct ESHU00JW00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :0;
};

struct ESHU00JW00 eshu00jw00_0 = { { 1 } };

int lto_sub_591() {

	printf("%u\n"  , eshu00jw03_0.m1.m1);
	printf("\n");

	printf("%u\n"  , eshu00jw29_0.m1.m1);
	printf("\n");

	printf("%u\n"  , eshu00jw00_0.m1.m1);
	printf("\n");

	return 0;
}
