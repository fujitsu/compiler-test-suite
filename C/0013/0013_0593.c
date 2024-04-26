                                                             
#include <stdio.h>                                              

struct ESIW03JW03 {
	unsigned long m1:3;
	unsigned long   :3;
};

struct ESIW03JW03 esiw03jw03_0 = { 1 };

struct ESIW03JW29 {
	unsigned long m1:3;
	unsigned long   :29;
};

struct ESIW03JW29 esiw03jw29_0 = { 1 };

struct ESIW03JW00 {
	unsigned long m1:3;
	unsigned long   :0;
};

struct ESIW03JW00 esiw03jw00_0 = { 1 };

int main() {

	printf("%d\n" , esiw03jw03_0.m1);
	printf("\n");

	printf("%d\n" , esiw03jw29_0.m1);
	printf("\n");

	printf("%d\n" , esiw03jw00_0.m1);
	printf("\n");

	return 0;
}
