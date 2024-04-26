                                                             
#include <stdio.h>                                              

union HUIW29JW03 {
	unsigned long m1:29;
	unsigned long   :3;
};

union HUIW29JW03 huiw29jw03_0[2] = {{ 1 },{ 2 }};
union HUIW29JW03 huiw29jw03_1[2] = {{ 1 }};

union HUIW29JW29 {
	unsigned long m1:29;
	unsigned long   :29;
};

union HUIW29JW29 huiw29jw29_0[2] = {{ 1 },{ 2 }};
union HUIW29JW29 huiw29jw29_1[2] = {{ 1 }};

union HUIW29JW00 {
	unsigned long m1:29;
	unsigned long   :0;
};

union HUIW29JW00 huiw29jw00_0[2] = {{ 1 },{ 2 }};
union HUIW29JW00 huiw29jw00_1[2] = {{ 1 }};

int main() {

	printf("%d\n" , huiw29jw03_0[0].m1);
	printf("%d\n" , huiw29jw03_0[1].m1);
	printf("\n");
	printf("%d\n" , huiw29jw03_1[0].m1);
	printf("\n");

	printf("%d\n" , huiw29jw29_0[0].m1);
	printf("%d\n" , huiw29jw29_0[1].m1);
	printf("\n");
	printf("%d\n" , huiw29jw29_1[0].m1);
	printf("\n");

	printf("%d\n" , huiw29jw00_0[0].m1);
	printf("%d\n" , huiw29jw00_0[1].m1);
	printf("\n");
	printf("%d\n" , huiw29jw00_1[0].m1);
	printf("\n");

	return 0;
}
