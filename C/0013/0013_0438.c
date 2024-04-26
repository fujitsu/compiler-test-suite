#include <stdio.h>                                              

struct ASJH13JW03HB00 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned char m3;
} asjh13jw03hb00 = { 1 };

struct ASJH13JW03IB03 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned char m3:3;
} asjh13jw03ib03 = { 1 };

struct ASJH13JW03IB05 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned char m3:5;
} asjh13jw03ib05 = { 1 };

struct ASJH13JW03HH00 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned short m3;
} asjh13jw03hh00 = { 1 };

struct ASJH13JW03IH03 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned short m3:3;
} asjh13jw03ih03 = { 1 };

struct ASJH13JW03IH13 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned short m3:13;
} asjh13jw03ih13 = { 1 };

struct ASJH13JW03HW00 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned long m3;
} asjh13jw03hw00 = { 1 };

struct ASJH13JW03IW03 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned long m3:3;
} asjh13jw03iw03 = { 1 };

struct ASJH13JW03IW29 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned long m3:29;
} asjh13jw03iw29 = { 1 };

struct ASJH13JW03HD00 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned long long m3;
} asjh13jw03hd00 = { 1 };

struct ASJH13JW03ID03 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned long long m3:3;
} asjh13jw03id03 = { 1 };

struct ASJH13JW03ID61 {
	unsigned short   :13;
	unsigned long   :3;
	unsigned long long m3:61;
} asjh13jw03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JW03HS00 {
	unsigned short   :13;
	unsigned long   :3;
	struct TAGHB00 m3;
} asjh13jw03hs00 = { { 1 } };

int main() {

	printf("%u\n"  , asjh13jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw03hw00.m3);
	printf("\n");

	printf("%d\n" , asjh13jw03iw03.m3);
	printf("\n");

	printf("%d\n" , asjh13jw03iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jw03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jw03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
