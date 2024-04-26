                                                             
#include <stdio.h>                                              

struct ESHW00JW03 {
	unsigned long m1;
	unsigned long   :3;
};

struct ESHW00JW03 eshw00jw03_0 = { 1 };

struct ESHW00JW29 {
	unsigned long m1;
	unsigned long   :29;
};

struct ESHW00JW29 eshw00jw29_0 = { 1 };

struct ESHW00JW00 {
	unsigned long m1;
	unsigned long   :0;
};

struct ESHW00JW00 eshw00jw00_0 = { 1 };

int main() {

	printf("%lu\n" , eshw00jw03_0.m1);
	printf("\n");

	printf("%lu\n" , eshw00jw29_0.m1);
	printf("\n");

	printf("%lu\n" , eshw00jw00_0.m1);
	printf("\n");

	return 0;
}
