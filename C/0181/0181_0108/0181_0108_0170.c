
	
	
	
	

#include <stdio.h>                                              

struct ASID61JD00HB00 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned char m3;
} asid61jd00hb00 = { 1, 2 };

struct ASID61JD00IB03 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned char m3:3;
} asid61jd00ib03 = { 1, 2 };

struct ASID61JD00IB05 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned char m3:5;
} asid61jd00ib05 = { 1, 2 };

struct ASID61JD00HH00 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned short m3;
} asid61jd00hh00 = { 1, 2 };

struct ASID61JD00IH03 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned short m3:3;
} asid61jd00ih03 = { 1, 2 };

struct ASID61JD00IH13 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned short m3:13;
} asid61jd00ih13 = { 1, 2 };

struct ASID61JD00HW00 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned long m3;
} asid61jd00hw00 = { 1, 2 };

struct ASID61JD00IW03 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned long m3:3;
} asid61jd00iw03 = { 1, 2 };

struct ASID61JD00IW29 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned long m3:29;
} asid61jd00iw29 = { 1, 2 };

struct ASID61JD00HD00 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned long long m3;
} asid61jd00hd00 = { 1, 2 };

struct ASID61JD00ID03 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned long long m3:3;
} asid61jd00id03 = { 1, 2 };

struct ASID61JD00ID61 {
	unsigned long long m1:61;
	unsigned long long   :0;
	unsigned long long m3:61;
} asid61jd00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASID61JD00HS00 {
	unsigned long long m1:61;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asid61jd00hs00 = { 1, { 2 } };

int lto_sub_171() {

	printf("%llu\n", (unsigned long long)asid61jd00hb00.m1);
	printf("%u\n"  , asid61jd00hb00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00ib03.m1);
	printf("%u\n"  , asid61jd00ib03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00ib05.m1);
	printf("%u\n"  , asid61jd00ib05.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00hh00.m1);
	printf("%u\n"  , asid61jd00hh00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00ih03.m1);
	printf("%u\n"  , asid61jd00ih03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00ih13.m1);
	printf("%u\n"  , asid61jd00ih13.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00hw00.m1);
	printf("%lu\n" , asid61jd00hw00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00iw03.m1);
	printf("%lu\n" , asid61jd00iw03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00iw29.m1);
	printf("%lu\n" , asid61jd00iw29.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00hd00.m1);
	printf("%llu\n", asid61jd00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00id03.m1);
	printf("%llu\n", (unsigned long long)asid61jd00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00id61.m1);
	printf("%llu\n", (unsigned long long)asid61jd00id61.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asid61jd00hs00.m1);
	printf("%u\n"  , asid61jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
