                                                             
#include <stdio.h>                                              

union EUHW00JW03 {
	unsigned long m1;
	unsigned long   :3;
};

union EUHW00JW03 euhw00jw03_0 = { 1 };

union EUHW00JW29 {
	unsigned long m1;
	unsigned long   :29;
};

union EUHW00JW29 euhw00jw29_0 = { 1 };

union EUHW00JW00 {
	unsigned long m1;
	unsigned long   :0;
};

union EUHW00JW00 euhw00jw00_0 = { 1 };

int main() {

	printf("%lu\n" , euhw00jw03_0.m1);
	printf("\n");

	printf("%lu\n" , euhw00jw29_0.m1);
	printf("\n");

	printf("%lu\n" , euhw00jw00_0.m1);
	printf("\n");

	return 0;
}
