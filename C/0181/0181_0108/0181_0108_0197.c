
	
	
	
	

#include <stdio.h>                                              

struct ASIH03JW03HB00 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned char m3;
} asih03jw03hb00 = { 1, 2 };

struct ASIH03JW03IB03 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned char m3:3;
} asih03jw03ib03 = { 1, 2 };

struct ASIH03JW03IB05 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned char m3:5;
} asih03jw03ib05 = { 1, 2 };

struct ASIH03JW03HH00 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned short m3;
} asih03jw03hh00 = { 1, 2 };

struct ASIH03JW03IH03 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned short m3:3;
} asih03jw03ih03 = { 1, 2 };

struct ASIH03JW03IH13 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned short m3:13;
} asih03jw03ih13 = { 1, 2 };

struct ASIH03JW03HW00 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned long m3;
} asih03jw03hw00 = { 1, 2 };

struct ASIH03JW03IW03 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned long m3:3;
} asih03jw03iw03 = { 1, 2 };

struct ASIH03JW03IW29 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned long m3:29;
} asih03jw03iw29 = { 1, 2 };

struct ASIH03JW03HD00 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned long long m3;
} asih03jw03hd00 = { 1, 2 };

struct ASIH03JW03ID03 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned long long m3:3;
} asih03jw03id03 = { 1, 2 };

struct ASIH03JW03ID61 {
	unsigned short m1:3;
	unsigned long   :3;
	unsigned long long m3:61;
} asih03jw03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH03JW03HS00 {
	unsigned short m1:3;
	unsigned long   :3;
	struct TAGHB00 m3;
} asih03jw03hs00 = { 1, { 2 } };

int lto_sub_198() {

	printf("%u\n"  , asih03jw03hb00.m1);
	printf("%u\n"  , asih03jw03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03ib03.m1);
	printf("%u\n"  , asih03jw03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03ib05.m1);
	printf("%u\n"  , asih03jw03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03hh00.m1);
	printf("%u\n"  , asih03jw03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03ih03.m1);
	printf("%u\n"  , asih03jw03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03ih13.m1);
	printf("%u\n"  , asih03jw03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03hw00.m1);
	printf("%lu\n" , asih03jw03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03iw03.m1);
	printf("%lu\n" , asih03jw03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03iw29.m1);
	printf("%lu\n" , asih03jw03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03hd00.m1);
	printf("%llu\n", asih03jw03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03id03.m1);
	printf("%llu\n", (unsigned long long)asih03jw03id03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03id61.m1);
	printf("%llu\n", (unsigned long long)asih03jw03id61.m3);
	printf("\n");

	printf("%u\n"  , asih03jw03hs00.m1);
	printf("%u\n"  , asih03jw03hs00.m3.m1);
	printf("\n");

	return 0;
}
