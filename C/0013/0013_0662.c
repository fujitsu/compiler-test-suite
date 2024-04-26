                                                             
#include <stdio.h>                                              

union HUHA01JW03 {
	unsigned char m1[3];
	unsigned long   :3;
};

union HUHA01JW03 huha01jw03_0[2] = {{ "12" },{ "34" }};
union HUHA01JW03 huha01jw03_1[2] = {{ "12" }};
union HUHA01JW03 huha01jw03_2[2] = {{ "1" }};
union HUHA01JW03 huha01jw03_3[2] = {{ "1" }};
union HUHA01JW03 huha01jw03_4[2] = {{ "12" }};

union HUHA01JW29 {
	unsigned char m1[3];
	unsigned long   :29;
};

union HUHA01JW29 huha01jw29_0[2] = {{ "12" },{ "34" }};
union HUHA01JW29 huha01jw29_1[2] = {{ "12" }};
union HUHA01JW29 huha01jw29_2[2] = {{ "1" }};
union HUHA01JW29 huha01jw29_3[2] = {{ "1" }};
union HUHA01JW29 huha01jw29_4[2] = {{ "12" }};

union HUHA01JW00 {
	unsigned char m1[3];
	unsigned long   :0;
};

union HUHA01JW00 huha01jw00_0[2] = {{ "12" },{ "34" }};
union HUHA01JW00 huha01jw00_1[2] = {{ "12" }};
union HUHA01JW00 huha01jw00_2[2] = {{ "1" }};
union HUHA01JW00 huha01jw00_3[2] = {{ "1" }};
union HUHA01JW00 huha01jw00_4[2] = {{ "12" }};

int main() {

	printf("%s\n"  , huha01jw03_0[0].m1);
	printf("%s\n"  , huha01jw03_0[1].m1);
	printf("\n");
	printf("%s\n"  , huha01jw03_1[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw03_2[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw03_3[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw03_4[0].m1);
	printf("\n");

	printf("%s\n"  , huha01jw29_0[0].m1);
	printf("%s\n"  , huha01jw29_0[1].m1);
	printf("\n");
	printf("%s\n"  , huha01jw29_1[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw29_2[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw29_3[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw29_4[0].m1);
	printf("\n");

	printf("%s\n"  , huha01jw00_0[0].m1);
	printf("%s\n"  , huha01jw00_0[1].m1);
	printf("\n");
	printf("%s\n"  , huha01jw00_1[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw00_2[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw00_3[0].m1);
	printf("\n");
	printf("%s\n"  , huha01jw00_4[0].m1);
	printf("\n");

	return 0;
}
