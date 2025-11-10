
	
	
	

#include <stdio.h>                                              

union EUIW29JW03 {
	unsigned long m1:29;
	unsigned long   :3;
};

union EUIW29JW03 euiw29jw03_0 = { 1 };

union EUIW29JW29 {
	unsigned long m1:29;
	unsigned long   :29;
};

union EUIW29JW29 euiw29jw29_0 = { 1 };

union EUIW29JW00 {
	unsigned long m1:29;
	unsigned long   :0;
};

union EUIW29JW00 euiw29jw00_0 = { 1 };

int lto_sub_601() {

	printf("%lu\n" , euiw29jw03_0.m1);
	printf("\n");

	printf("%lu\n" , euiw29jw29_0.m1);
	printf("\n");

	printf("%lu\n" , euiw29jw00_0.m1);
	printf("\n");

	return 0;
}
