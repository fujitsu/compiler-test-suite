                                                             
#include <stdio.h>                                              

union EUHA04JW03 {
	unsigned long m1[2];
	unsigned long   :3;
};

union EUHA04JW03 euha04jw03_0 = { {1,2} };
union EUHA04JW03 euha04jw03_1 = { {1} };

union EUHA04JW29 {
	unsigned long m1[2];
	unsigned long   :29;
};

union EUHA04JW29 euha04jw29_0 = { {1,2} };
union EUHA04JW29 euha04jw29_1 = { {1} };

union EUHA04JW00 {
	unsigned long m1[2];
	unsigned long   :0;
};

union EUHA04JW00 euha04jw00_0 = { {1,2} };
union EUHA04JW00 euha04jw00_1 = { {1} };

int main() {

	printf("%lu\n" , euha04jw03_0.m1[0]);
	printf("%lu\n" , euha04jw03_0.m1[1]);
	printf("\n");
	printf("%lu\n" , euha04jw03_1.m1[0]);
	printf("\n");

	printf("%lu\n" , euha04jw29_0.m1[0]);
	printf("%lu\n" , euha04jw29_0.m1[1]);
	printf("\n");
	printf("%lu\n" , euha04jw29_1.m1[0]);
	printf("\n");

	printf("%lu\n" , euha04jw00_0.m1[0]);
	printf("%lu\n" , euha04jw00_0.m1[1]);
	printf("\n");
	printf("%lu\n" , euha04jw00_1.m1[0]);
	printf("\n");

	return 0;
}
