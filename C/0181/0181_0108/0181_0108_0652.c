
	
	
	

#include <stdio.h>                                              

union HUIW03JW03 {
	unsigned long m1:3;
	unsigned long   :3;
};

union HUIW03JW03 huiw03jw03_0[2] = {{ 1 },{ 2 }};
union HUIW03JW03 huiw03jw03_1[2] = {{ 1 }};

union HUIW03JW29 {
	unsigned long m1:3;
	unsigned long   :29;
};

union HUIW03JW29 huiw03jw29_0[2] = {{ 1 },{ 2 }};
union HUIW03JW29 huiw03jw29_1[2] = {{ 1 }};

union HUIW03JW00 {
	unsigned long m1:3;
	unsigned long   :0;
};

union HUIW03JW00 huiw03jw00_0[2] = {{ 1 },{ 2 }};
union HUIW03JW00 huiw03jw00_1[2] = {{ 1 }};

int lto_sub_667() {

	printf("%lu\n" , huiw03jw03_0[0].m1);
	printf("%lu\n" , huiw03jw03_0[1].m1);
	printf("\n");
	printf("%lu\n" , huiw03jw03_1[0].m1);
	printf("\n");

	printf("%lu\n" , huiw03jw29_0[0].m1);
	printf("%lu\n" , huiw03jw29_0[1].m1);
	printf("\n");
	printf("%lu\n" , huiw03jw29_1[0].m1);
	printf("\n");

	printf("%lu\n" , huiw03jw00_0[0].m1);
	printf("%lu\n" , huiw03jw00_0[1].m1);
	printf("\n");
	printf("%lu\n" , huiw03jw00_1[0].m1);
	printf("\n");

	return 0;
}
