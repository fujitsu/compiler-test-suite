
	
	
	

#include <stdio.h>                                              

struct ESIW29JW03 {
	unsigned long m1:29;
	unsigned long   :3;
};

struct ESIW29JW03 esiw29jw03_0 = { 1 };

struct ESIW29JW29 {
	unsigned long m1:29;
	unsigned long   :29;
};

struct ESIW29JW29 esiw29jw29_0 = { 1 };

struct ESIW29JW00 {
	unsigned long m1:29;
	unsigned long   :0;
};

struct ESIW29JW00 esiw29jw00_0 = { 1 };

int lto_sub_594() {

	printf("%lu\n" , esiw29jw03_0.m1);
	printf("\n");

	printf("%lu\n" , esiw29jw29_0.m1);
	printf("\n");

	printf("%lu\n" , esiw29jw00_0.m1);
	printf("\n");

	return 0;
}
