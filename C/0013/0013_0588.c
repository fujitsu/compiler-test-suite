                                                             
#include <stdio.h>                                              

struct ESHA01JW03 {
	unsigned char m1[3];
	unsigned long   :3;
};

struct ESHA01JW03 esha01jw03_0 = { "12" };
struct ESHA01JW03 esha01jw03_1 = { "1" };

struct ESHA01JW29 {
	unsigned char m1[3];
	unsigned long   :29;
};

struct ESHA01JW29 esha01jw29_0 = { "12" };
struct ESHA01JW29 esha01jw29_1 = { "1" };

struct ESHA01JW00 {
	unsigned char m1[3];
	unsigned long   :0;
};

struct ESHA01JW00 esha01jw00_0 = { "12" };
struct ESHA01JW00 esha01jw00_1 = { "1" };

int main() {

	printf("%s\n"  , esha01jw03_0.m1);
	printf("\n");
	printf("%s\n"  , esha01jw03_1.m1);
	printf("\n");

	printf("%s\n"  , esha01jw29_0.m1);
	printf("\n");
	printf("%s\n"  , esha01jw29_1.m1);
	printf("\n");

	printf("%s\n"  , esha01jw00_0.m1);
	printf("\n");
	printf("%s\n"  , esha01jw00_1.m1);
	printf("\n");

	return 0;
}
