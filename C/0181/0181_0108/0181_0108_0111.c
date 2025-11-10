
	
	
	
	

#include <stdio.h>                                              

struct ASIB03JD03HB00 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned char m3;
} asib03jd03hb00 = { 1, 2 };

struct ASIB03JD03IB03 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned char m3:3;
} asib03jd03ib03 = { 1, 2 };

struct ASIB03JD03IB05 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned char m3:5;
} asib03jd03ib05 = { 1, 2 };

struct ASIB03JD03HH00 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned short m3;
} asib03jd03hh00 = { 1, 2 };

struct ASIB03JD03IH03 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned short m3:3;
} asib03jd03ih03 = { 1, 2 };

struct ASIB03JD03IH13 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned short m3:13;
} asib03jd03ih13 = { 1, 2 };

struct ASIB03JD03HW00 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned long m3;
} asib03jd03hw00 = { 1, 2 };

struct ASIB03JD03IW03 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned long m3:3;
} asib03jd03iw03 = { 1, 2 };

struct ASIB03JD03IW29 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned long m3:29;
} asib03jd03iw29 = { 1, 2 };

struct ASIB03JD03HD00 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned long long m3;
} asib03jd03hd00 = { 1, 2 };

struct ASIB03JD03ID03 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned long long m3:3;
} asib03jd03id03 = { 1, 2 };

struct ASIB03JD03ID61 {
	unsigned char m1:3;
	unsigned long long   :3;
	unsigned long long m3:61;
} asib03jd03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIB03JD03HS00 {
	unsigned char m1:3;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asib03jd03hs00 = { 1, { 2 } };

int lto_sub_112() {

	printf("%u\n"  , asib03jd03hb00.m1);
	printf("%u\n"  , asib03jd03hb00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03ib03.m1);
	printf("%u\n"  , asib03jd03ib03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03ib05.m1);
	printf("%u\n"  , asib03jd03ib05.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03hh00.m1);
	printf("%u\n"  , asib03jd03hh00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03ih03.m1);
	printf("%u\n"  , asib03jd03ih03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03ih13.m1);
	printf("%u\n"  , asib03jd03ih13.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03hw00.m1);
	printf("%lu\n" , asib03jd03hw00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03iw03.m1);
	printf("%lu\n" , asib03jd03iw03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03iw29.m1);
	printf("%lu\n" , asib03jd03iw29.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03hd00.m1);
	printf("%llu\n", asib03jd03hd00.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03id03.m1);
	printf("%llu\n", (unsigned long long)asib03jd03id03.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03id61.m1);
	printf("%llu\n", (unsigned long long)asib03jd03id61.m3);
	printf("\n");

	printf("%u\n"  , asib03jd03hs00.m1);
	printf("%u\n"  , asib03jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
