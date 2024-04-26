                                                             
#include <stdio.h>                                              

union HUHW00JW03 {
	unsigned long m1;
	unsigned long   :3;
};

union HUHW00JW03 huhw00jw03_0[2] = {{ 1 },{ 2 }};
union HUHW00JW03 huhw00jw03_1[2] = {{ 1 }};

union HUHW00JW29 {
	unsigned long m1;
	unsigned long   :29;
};

union HUHW00JW29 huhw00jw29_0[2] = {{ 1 },{ 2 }};
union HUHW00JW29 huhw00jw29_1[2] = {{ 1 }};

union HUHW00JW00 {
	unsigned long m1;
	unsigned long   :0;
};

union HUHW00JW00 huhw00jw00_0[2] = {{ 1 },{ 2 }};
union HUHW00JW00 huhw00jw00_1[2] = {{ 1 }};

int main() {

	printf("%lu\n" , huhw00jw03_0[0].m1);
	printf("%lu\n" , huhw00jw03_0[1].m1);
	printf("\n");
	printf("%lu\n" , huhw00jw03_1[0].m1);
	printf("\n");

	printf("%lu\n" , huhw00jw29_0[0].m1);
	printf("%lu\n" , huhw00jw29_0[1].m1);
	printf("\n");
	printf("%lu\n" , huhw00jw29_1[0].m1);
	printf("\n");

	printf("%lu\n" , huhw00jw00_0[0].m1);
	printf("%lu\n" , huhw00jw00_0[1].m1);
	printf("\n");
	printf("%lu\n" , huhw00jw00_1[0].m1);
	printf("\n");

	return 0;
}
