
	
	
	

#include <stdio.h>                                              

union SUB_UHB00HW00 {
	unsigned char m1;
	unsigned long m2;
};

union EUHU00JW03 {
	union SUB_UHB00HW00 m1;
	unsigned long   :3;
};

union EUHU00JW03 euhu00jw03_0 = { { 1 } };

union EUHU00JW29 {
	union SUB_UHB00HW00 m1;
	unsigned long   :29;
};

union EUHU00JW29 euhu00jw29_0 = { { 1 } };

union EUHU00JW00 {
	union SUB_UHB00HW00 m1;
	unsigned long   :0;
};

union EUHU00JW00 euhu00jw00_0 = { { 1 } };

int lto_sub_598() {

	printf("%u\n"  , euhu00jw03_0.m1.m1);
	printf("\n");

	printf("%u\n"  , euhu00jw29_0.m1.m1);
	printf("\n");

	printf("%u\n"  , euhu00jw00_0.m1.m1);
	printf("\n");

	return 0;
}
