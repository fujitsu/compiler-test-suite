#include <stdio.h>                                              

struct ASJD03IH13HB00 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned char m3;
} asjd03ih13hb00 = { 1, 2 };

struct ASJD03IH13IB03 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned char m3:3;
} asjd03ih13ib03 = { 1, 2 };

struct ASJD03IH13IB05 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned char m3:5;
} asjd03ih13ib05 = { 1, 2 };

struct ASJD03IH13HH00 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned short m3;
} asjd03ih13hh00 = { 1, 2 };

struct ASJD03IH13IH03 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned short m3:3;
} asjd03ih13ih03 = { 1, 2 };

struct ASJD03IH13IH13 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned short m3:13;
} asjd03ih13ih13 = { 1, 2 };

struct ASJD03IH13HW00 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned long m3;
} asjd03ih13hw00 = { 1, 2 };

struct ASJD03IH13IW03 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned long m3:3;
} asjd03ih13iw03 = { 1, 2 };

struct ASJD03IH13IW29 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned long m3:29;
} asjd03ih13iw29 = { 1, 2 };

struct ASJD03IH13HD00 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned long long m3;
} asjd03ih13hd00 = { 1, 2 };

struct ASJD03IH13ID03 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned long long m3:3;
} asjd03ih13id03 = { 1, 2 };

struct ASJD03IH13ID61 {
	unsigned long long   :3;
	unsigned short m2:13;
	unsigned long long m3:61;
} asjd03ih13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJD03IH13HS00 {
	unsigned long long   :3;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asjd03ih13hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjd03ih13hb00.m2);
	printf("%u\n"  , asjd03ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13ib03.m2);
	printf("%u\n"  , asjd03ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13ib05.m2);
	printf("%u\n"  , asjd03ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13hh00.m2);
	printf("%u\n"  , asjd03ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13ih03.m2);
	printf("%u\n"  , asjd03ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13ih13.m2);
	printf("%u\n"  , asjd03ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13hw00.m2);
	printf("%lu\n" , asjd03ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13iw03.m2);
	printf("%d\n" , asjd03ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13iw29.m2);
	printf("%d\n" , asjd03ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13hd00.m2);
	printf("%llu\n", asjd03ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13id03.m2);
	printf("%llu\n", (unsigned long long)asjd03ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13id61.m2);
	printf("%llu\n", (unsigned long long)asjd03ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asjd03ih13hs00.m2);
	printf("%u\n"  , asjd03ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
