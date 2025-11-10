
	
	
	
	

#include <stdio.h>                                              

struct ASJH13IH03HB00 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned char m3;
} asjh13ih03hb00 = { 1, 2 };

struct ASJH13IH03IB03 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned char m3:3;
} asjh13ih03ib03 = { 1, 2 };

struct ASJH13IH03IB05 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned char m3:5;
} asjh13ih03ib05 = { 1, 2 };

struct ASJH13IH03HH00 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned short m3;
} asjh13ih03hh00 = { 1, 2 };

struct ASJH13IH03IH03 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned short m3:3;
} asjh13ih03ih03 = { 1, 2 };

struct ASJH13IH03IH13 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned short m3:13;
} asjh13ih03ih13 = { 1, 2 };

struct ASJH13IH03HW00 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned long m3;
} asjh13ih03hw00 = { 1, 2 };

struct ASJH13IH03IW03 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned long m3:3;
} asjh13ih03iw03 = { 1, 2 };

struct ASJH13IH03IW29 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned long m3:29;
} asjh13ih03iw29 = { 1, 2 };

struct ASJH13IH03HD00 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned long long m3;
} asjh13ih03hd00 = { 1, 2 };

struct ASJH13IH03ID03 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned long long m3:3;
} asjh13ih03id03 = { 1, 2 };

struct ASJH13IH03ID61 {
	unsigned short   :13;
	unsigned short m2:3;
	unsigned long long m3:61;
} asjh13ih03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13IH03HS00 {
	unsigned short   :13;
	unsigned short m2:3;
	struct TAGHB00 m3;
} asjh13ih03hs00 = { 1, { 2 } };

int lto_sub_424() {

	printf("%u\n"  , asjh13ih03hb00.m2);
	printf("%u\n"  , asjh13ih03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03ib03.m2);
	printf("%u\n"  , asjh13ih03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03ib05.m2);
	printf("%u\n"  , asjh13ih03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03hh00.m2);
	printf("%u\n"  , asjh13ih03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03ih03.m2);
	printf("%u\n"  , asjh13ih03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03ih13.m2);
	printf("%u\n"  , asjh13ih03ih13.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03hw00.m2);
	printf("%lu\n" , asjh13ih03hw00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03iw03.m2);
	printf("%lu\n" , asjh13ih03iw03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03iw29.m2);
	printf("%lu\n" , asjh13ih03iw29.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03hd00.m2);
	printf("%llu\n", asjh13ih03hd00.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03id03.m2);
	printf("%llu\n", (unsigned long long)asjh13ih03id03.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03id61.m2);
	printf("%llu\n", (unsigned long long)asjh13ih03id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13ih03hs00.m2);
	printf("%u\n"  , asjh13ih03hs00.m3.m1);
	printf("\n");

	return 0;
}
