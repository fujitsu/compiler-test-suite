
	
	
	
	

#include <stdio.h>                                              

struct ASJH13IB03HB00 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned char m3;
} asjh13ib03hb00 = { 1, 2 };

struct ASJH13IB03IB03 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned char m3:3;
} asjh13ib03ib03 = { 1, 2 };

struct ASJH13IB03IB05 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned char m3:5;
} asjh13ib03ib05 = { 1, 2 };

struct ASJH13IB03HH00 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned short m3;
} asjh13ib03hh00 = { 1, 2 };

struct ASJH13IB03IH03 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned short m3:3;
} asjh13ib03ih03 = { 1, 2 };

struct ASJH13IB03IH13 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned short m3:13;
} asjh13ib03ih13 = { 1, 2 };

struct ASJH13IB03HW00 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned long m3;
} asjh13ib03hw00 = { 1, 2 };

struct ASJH13IB03IW03 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned long m3:3;
} asjh13ib03iw03 = { 1, 2 };

struct ASJH13IB03IW29 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned long m3:29;
} asjh13ib03iw29 = { 1, 2 };

struct ASJH13IB03HD00 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned long long m3;
} asjh13ib03hd00 = { 1, 2 };

struct ASJH13IB03ID03 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned long long m3:3;
} asjh13ib03id03 = { 1, 2 };

struct ASJH13IB03ID61 {
	unsigned short   :13;
	unsigned char m2:3;
	unsigned long long m3:61;
} asjh13ib03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13IB03HS00 {
	unsigned short   :13;
	unsigned char m2:3;
	struct TAGHB00 m3;
} asjh13ib03hs00 = { 1, { 2 } };

int lto_sub_420() {

	printf("%u\n"  , asjh13ib03hb00.m2);
	printf("%u\n"  , asjh13ib03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03ib03.m2);
	printf("%u\n"  , asjh13ib03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03ib05.m2);
	printf("%u\n"  , asjh13ib03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03hh00.m2);
	printf("%u\n"  , asjh13ib03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03ih03.m2);
	printf("%u\n"  , asjh13ib03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03ih13.m2);
	printf("%u\n"  , asjh13ib03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03hw00.m2);
	printf("%lu\n" , asjh13ib03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03iw03.m2);
	printf("%lu\n" , asjh13ib03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03iw29.m2);
	printf("%lu\n" , asjh13ib03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03hd00.m2);
	printf("%llu\n", asjh13ib03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03id03.m2);
	printf("%llu\n", (unsigned long long)asjh13ib03id03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03id61.m2);
	printf("%llu\n", (unsigned long long)asjh13ib03id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13ib03hs00.m2);
	printf("%u\n"  , asjh13ib03hs00.m3.m1);
	printf("\n");

	return 0;
}
