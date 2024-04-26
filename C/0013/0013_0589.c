                                                             
#include <stdio.h>                                              

struct ESHA04JW03 {
	unsigned long m1[2];
	unsigned long   :3;
};

struct ESHA04JW03 esha04jw03_0 = { {1,2} };
struct ESHA04JW03 esha04jw03_1 = { {1} };

struct ESHA04JW29 {
	unsigned long m1[2];
	unsigned long   :29;
};

struct ESHA04JW29 esha04jw29_0 = { {1,2} };
struct ESHA04JW29 esha04jw29_1 = { {1} };

struct ESHA04JW00 {
	unsigned long m1[2];
	unsigned long   :0;
};

struct ESHA04JW00 esha04jw00_0 = { {1,2} };
struct ESHA04JW00 esha04jw00_1 = { {1} };

int main() {

	printf("%lu\n" , esha04jw03_0.m1[0]);
	printf("%lu\n" , esha04jw03_0.m1[1]);
	printf("\n");
	printf("%lu\n" , esha04jw03_1.m1[0]);
	printf("\n");

	printf("%lu\n" , esha04jw29_0.m1[0]);
	printf("%lu\n" , esha04jw29_0.m1[1]);
	printf("\n");
	printf("%lu\n" , esha04jw29_1.m1[0]);
	printf("\n");

	printf("%lu\n" , esha04jw00_0.m1[0]);
	printf("%lu\n" , esha04jw00_0.m1[1]);
	printf("\n");
	printf("%lu\n" , esha04jw00_1.m1[0]);
	printf("\n");

	return 0;
}
