#include <stdio.h>                                              

struct ASJW00IH13HB00 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned char m3;
} asjw00ih13hb00 = { 1, 2 };

struct ASJW00IH13IB03 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned char m3:3;
} asjw00ih13ib03 = { 1, 2 };

struct ASJW00IH13IB05 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned char m3:5;
} asjw00ih13ib05 = { 1, 2 };

struct ASJW00IH13HH00 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned short m3;
} asjw00ih13hh00 = { 1, 2 };

struct ASJW00IH13IH03 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned short m3:3;
} asjw00ih13ih03 = { 1, 2 };

struct ASJW00IH13IH13 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned short m3:13;
} asjw00ih13ih13 = { 1, 2 };

struct ASJW00IH13HW00 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned long m3;
} asjw00ih13hw00 = { 1, 2 };

struct ASJW00IH13IW03 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned long m3:3;
} asjw00ih13iw03 = { 1, 2 };

struct ASJW00IH13IW29 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned long m3:29;
} asjw00ih13iw29 = { 1, 2 };

struct ASJW00IH13HD00 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned long long m3;
} asjw00ih13hd00 = { 1, 2 };

struct ASJW00IH13ID03 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned long long m3:3;
} asjw00ih13id03 = { 1, 2 };

struct ASJW00IH13ID61 {
	unsigned long   :0;
	unsigned short m2:13;
	unsigned long long m3:61;
} asjw00ih13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW00IH13HS00 {
	unsigned long   :0;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asjw00ih13hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjw00ih13hb00.m2);
	printf("%u\n"  , asjw00ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13ib03.m2);
	printf("%u\n"  , asjw00ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13ib05.m2);
	printf("%u\n"  , asjw00ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13hh00.m2);
	printf("%u\n"  , asjw00ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13ih03.m2);
	printf("%u\n"  , asjw00ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13ih13.m2);
	printf("%u\n"  , asjw00ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13hw00.m2);
	printf("%lu\n" , asjw00ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13iw03.m2);
	printf("%d\n" , asjw00ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13iw29.m2);
	printf("%d\n" , asjw00ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13hd00.m2);
	printf("%llu\n", asjw00ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13id03.m2);
	printf("%llu\n", (unsigned long long)asjw00ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13id61.m2);
	printf("%llu\n", (unsigned long long)asjw00ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih13hs00.m2);
	printf("%u\n"  , asjw00ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
