                                                             
#include <stdio.h>                                              

struct HSIW03JW03 {
	unsigned long m1:3;
	unsigned long   :3;
};

struct HSIW03JW03 hsiw03jw03_0[2] = {{ 1 },{ 2 }};
struct HSIW03JW03 hsiw03jw03_1[2] = {{ 1 }};

struct HSIW03JW29 {
	unsigned long m1:3;
	unsigned long   :29;
};

struct HSIW03JW29 hsiw03jw29_0[2] = {{ 1 },{ 2 }};
struct HSIW03JW29 hsiw03jw29_1[2] = {{ 1 }};

struct HSIW03JW00 {
	unsigned long m1:3;
	unsigned long   :0;
};

struct HSIW03JW00 hsiw03jw00_0[2] = {{ 1 },{ 2 }};
struct HSIW03JW00 hsiw03jw00_1[2] = {{ 1 }};

int main() {

	printf("%d\n" , hsiw03jw03_0[0].m1);
	printf("%d\n" , hsiw03jw03_0[1].m1);
	printf("\n");
	printf("%d\n" , hsiw03jw03_1[0].m1);
	printf("\n");

	printf("%d\n" , hsiw03jw29_0[0].m1);
	printf("%d\n" , hsiw03jw29_0[1].m1);
	printf("\n");
	printf("%d\n" , hsiw03jw29_1[0].m1);
	printf("\n");

	printf("%d\n" , hsiw03jw00_0[0].m1);
	printf("%d\n" , hsiw03jw00_0[1].m1);
	printf("\n");
	printf("%d\n" , hsiw03jw00_1[0].m1);
	printf("\n");

	return 0;
}
