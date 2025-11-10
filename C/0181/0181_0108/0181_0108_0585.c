
	
	
	

#include <stdio.h>                                              

union EUIW03JW03 {
	unsigned long m1:3;
	unsigned long   :3;
};

union EUIW03JW03 euiw03jw03_0 = { 1 };

union EUIW03JW29 {
	unsigned long m1:3;
	unsigned long   :29;
};

union EUIW03JW29 euiw03jw29_0 = { 1 };

union EUIW03JW00 {
	unsigned long m1:3;
	unsigned long   :0;
};

union EUIW03JW00 euiw03jw00_0 = { 1 };

int lto_sub_600() {

	printf("%lu\n" , euiw03jw03_0.m1);
	printf("\n");

	printf("%lu\n" , euiw03jw29_0.m1);
	printf("\n");

	printf("%lu\n" , euiw03jw00_0.m1);
	printf("\n");

	return 0;
}
