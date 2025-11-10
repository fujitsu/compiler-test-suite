
	
	
	
	

#include <stdio.h>                                              

struct ASIB03JD00HB00 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned char m3;
} asib03jd00hb00 = { 1, 2 };

struct ASIB03JD00IB03 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned char m3:3;
} asib03jd00ib03 = { 1, 2 };

struct ASIB03JD00IB05 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned char m3:5;
} asib03jd00ib05 = { 1, 2 };

struct ASIB03JD00HH00 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned short m3;
} asib03jd00hh00 = { 1, 2 };

struct ASIB03JD00IH03 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned short m3:3;
} asib03jd00ih03 = { 1, 2 };

struct ASIB03JD00IH13 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned short m3:13;
} asib03jd00ih13 = { 1, 2 };

struct ASIB03JD00HW00 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned long m3;
} asib03jd00hw00 = { 1, 2 };

struct ASIB03JD00IW03 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned long m3:3;
} asib03jd00iw03 = { 1, 2 };

struct ASIB03JD00IW29 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned long m3:29;
} asib03jd00iw29 = { 1, 2 };

struct ASIB03JD00HD00 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned long long m3;
} asib03jd00hd00 = { 1, 2 };

struct ASIB03JD00ID03 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned long long m3:3;
} asib03jd00id03 = { 1, 2 };

struct ASIB03JD00ID61 {
	unsigned char m1:3;
	unsigned long long   :0;
	unsigned long long m3:61;
} asib03jd00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB03JD00HS00 {
	unsigned char m1:3;
	unsigned long long   :0;
	struct TAGHB00 m3;
} asib03jd00hs00 = { 1, { 2 } };

int lto_sub_111() {

	printf("%u\n"  , asib03jd00hb00.m1);
	printf("%u\n"  , asib03jd00hb00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00ib03.m1);
	printf("%u\n"  , asib03jd00ib03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00ib05.m1);
	printf("%u\n"  , asib03jd00ib05.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00hh00.m1);
	printf("%u\n"  , asib03jd00hh00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00ih03.m1);
	printf("%u\n"  , asib03jd00ih03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00ih13.m1);
	printf("%u\n"  , asib03jd00ih13.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00hw00.m1);
	printf("%lu\n" , asib03jd00hw00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00iw03.m1);
	printf("%lu\n" , asib03jd00iw03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00iw29.m1);
	printf("%lu\n" , asib03jd00iw29.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00hd00.m1);
	printf("%llu\n", asib03jd00hd00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00id03.m1);
	printf("%llu\n", (unsigned long long)asib03jd00id03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00id61.m1);
	printf("%llu\n", (unsigned long long)asib03jd00id61.m3);
	printf("\n");

	printf("%u\n"  , asib03jd00hs00.m1);
	printf("%u\n"  , asib03jd00hs00.m3.m1);
	printf("\n");

	return 0;
}
