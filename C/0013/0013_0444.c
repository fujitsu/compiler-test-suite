#include <stdio.h>                                              

struct ASJW00IH03HB00 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned char m3;
} asjw00ih03hb00 = { 1, 2 };

struct ASJW00IH03IB03 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned char m3:3;
} asjw00ih03ib03 = { 1, 2 };

struct ASJW00IH03IB05 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned char m3:5;
} asjw00ih03ib05 = { 1, 2 };

struct ASJW00IH03HH00 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned short m3;
} asjw00ih03hh00 = { 1, 2 };

struct ASJW00IH03IH03 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned short m3:3;
} asjw00ih03ih03 = { 1, 2 };

struct ASJW00IH03IH13 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned short m3:13;
} asjw00ih03ih13 = { 1, 2 };

struct ASJW00IH03HW00 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned long m3;
} asjw00ih03hw00 = { 1, 2 };

struct ASJW00IH03IW03 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned long m3:3;
} asjw00ih03iw03 = { 1, 2 };

struct ASJW00IH03IW29 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned long m3:29;
} asjw00ih03iw29 = { 1, 2 };

struct ASJW00IH03HD00 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned long long m3;
} asjw00ih03hd00 = { 1, 2 };

struct ASJW00IH03ID03 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned long long m3:3;
} asjw00ih03id03 = { 1, 2 };

struct ASJW00IH03ID61 {
	unsigned long   :0;
	unsigned short m2:3;
	unsigned long long m3:61;
} asjw00ih03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW00IH03HS00 {
	unsigned long   :0;
	unsigned short m2:3;
	struct TAGHB00 m3;
} asjw00ih03hs00 = { 1, { 2 } };

int main() {

	printf("%u\n"  , asjw00ih03hb00.m2);
	printf("%u\n"  , asjw00ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03ib03.m2);
	printf("%u\n"  , asjw00ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03ib05.m2);
	printf("%u\n"  , asjw00ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03hh00.m2);
	printf("%u\n"  , asjw00ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03ih03.m2);
	printf("%u\n"  , asjw00ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03ih13.m2);
	printf("%u\n"  , asjw00ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03hw00.m2);
	printf("%lu\n" , asjw00ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03iw03.m2);
	printf("%d\n" , asjw00ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03iw29.m2);
	printf("%d\n" , asjw00ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03hd00.m2);
	printf("%llu\n", asjw00ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03id03.m2);
	printf("%llu\n", (unsigned long long)asjw00ih03id03.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03id61.m2);
	printf("%llu\n", (unsigned long long)asjw00ih03id61.m3);
	printf("\n");

	printf("%u\n"  , asjw00ih03hs00.m2);
	printf("%u\n"  , asjw00ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
