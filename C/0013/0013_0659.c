                                                             
#include <stdio.h>                                              

struct HSHW00JW03 {
	unsigned long m1;
	unsigned long   :3;
};

struct HSHW00JW03 hshw00jw03_0[2] = {{ 1 },{ 2 }};
struct HSHW00JW03 hshw00jw03_1[2] = {{ 1 }};

struct HSHW00JW29 {
	unsigned long m1;
	unsigned long   :29;
};

struct HSHW00JW29 hshw00jw29_0[2] = {{ 1 },{ 2 }};
struct HSHW00JW29 hshw00jw29_1[2] = {{ 1 }};

struct HSHW00JW00 {
	unsigned long m1;
	unsigned long   :0;
};

struct HSHW00JW00 hshw00jw00_0[2] = {{ 1 },{ 2 }};
struct HSHW00JW00 hshw00jw00_1[2] = {{ 1 }};

int main() {

	printf("%lu\n" , hshw00jw03_0[0].m1);
	printf("%lu\n" , hshw00jw03_0[1].m1);
	printf("\n");
	printf("%lu\n" , hshw00jw03_1[0].m1);
	printf("\n");

	printf("%lu\n" , hshw00jw29_0[0].m1);
	printf("%lu\n" , hshw00jw29_0[1].m1);
	printf("\n");
	printf("%lu\n" , hshw00jw29_1[0].m1);
	printf("\n");

	printf("%lu\n" , hshw00jw00_0[0].m1);
	printf("%lu\n" , hshw00jw00_0[1].m1);
	printf("\n");
	printf("%lu\n" , hshw00jw00_1[0].m1);
	printf("\n");

	return 0;
}
