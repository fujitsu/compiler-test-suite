                                                            
#include <stdio.h>                                              

struct TAGHB00 {
	unsigned char m1;
};

struct ASHS00JD03HB00 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned char m3;
} ashs00jd03hb00 = { { 1 }, 2 };

struct ASHS00JD03IB03 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned char m3:3;
} ashs00jd03ib03 = { { 1 }, 2 };

struct ASHS00JD03IB05 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned char m3:5;
} ashs00jd03ib05 = { { 1 }, 2 };

struct ASHS00JD03HH00 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned short m3;
} ashs00jd03hh00 = { { 1 }, 2 };

struct ASHS00JD03IH03 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned short m3:3;
} ashs00jd03ih03 = { { 1 }, 2 };

struct ASHS00JD03IH13 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned short m3:13;
} ashs00jd03ih13 = { { 1 }, 2 };

struct ASHS00JD03HW00 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned long m3;
} ashs00jd03hw00 = { { 1 }, 2 };

struct ASHS00JD03IW03 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned long m3:3;
} ashs00jd03iw03 = { { 1 }, 2 };

struct ASHS00JD03IW29 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned long m3:29;
} ashs00jd03iw29 = { { 1 }, 2 };

struct ASHS00JD03HD00 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned long long m3;
} ashs00jd03hd00 = { { 1 }, 2 };

struct ASHS00JD03ID03 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned long long m3:3;
} ashs00jd03id03 = { { 1 }, 2 };

struct ASHS00JD03ID61 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	unsigned long long m3:61;
} ashs00jd03id61 = { { 1 }, 2 };

struct ASHS00JD03HS00 {
	struct TAGHB00 m1;
	unsigned long long   :3;
	struct TAGHB00 m3;
} ashs00jd03hs00 = { { 1 }, { 2 } };

int lto_sub_72() {

	printf("%u\n"  , ashs00jd03hb00.m1.m1);
	printf("%u\n"  , ashs00jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03ib03.m1.m1);
	printf("%u\n"  , ashs00jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03ib05.m1.m1);
	printf("%u\n"  , ashs00jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03hh00.m1.m1);
	printf("%u\n"  , ashs00jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03ih03.m1.m1);
	printf("%u\n"  , ashs00jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03ih13.m1.m1);
	printf("%u\n"  , ashs00jd03ih13.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03hw00.m1.m1);
	printf("%lu\n" , ashs00jd03hw00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03iw03.m1.m1);
	printf("%lu\n" , ashs00jd03iw03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03iw29.m1.m1);
	printf("%lu\n" , ashs00jd03iw29.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03hd00.m1.m1);
	printf("%llu\n", ashs00jd03hd00.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03id03.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jd03id03.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03id61.m1.m1);
	printf("%llu\n", (unsigned long long)ashs00jd03id61.m3);
	printf("\n");

	printf("%u\n"  , ashs00jd03hs00.m1.m1);
	printf("%u\n"  , ashs00jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
