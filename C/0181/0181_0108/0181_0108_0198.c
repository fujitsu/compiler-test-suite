
	
	
	
	

#include <stdio.h>                                              

struct ASIH03JW29HB00 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned char m3;
} asih03jw29hb00 = { 1, 2 };

struct ASIH03JW29IB03 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned char m3:3;
} asih03jw29ib03 = { 1, 2 };

struct ASIH03JW29IB05 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned char m3:5;
} asih03jw29ib05 = { 1, 2 };

struct ASIH03JW29HH00 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned short m3;
} asih03jw29hh00 = { 1, 2 };

struct ASIH03JW29IH03 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned short m3:3;
} asih03jw29ih03 = { 1, 2 };

struct ASIH03JW29IH13 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned short m3:13;
} asih03jw29ih13 = { 1, 2 };

struct ASIH03JW29HW00 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned long m3;
} asih03jw29hw00 = { 1, 2 };

struct ASIH03JW29IW03 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned long m3:3;
} asih03jw29iw03 = { 1, 2 };

struct ASIH03JW29IW29 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned long m3:29;
} asih03jw29iw29 = { 1, 2 };

struct ASIH03JW29HD00 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned long long m3;
} asih03jw29hd00 = { 1, 2 };

struct ASIH03JW29ID03 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned long long m3:3;
} asih03jw29id03 = { 1, 2 };

struct ASIH03JW29ID61 {
	unsigned short m1:3;
	unsigned long   :29;
	unsigned long long m3:61;
} asih03jw29id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH03JW29HS00 {
	unsigned short m1:3;
	unsigned long   :29;
	struct TAGHB00 m3;
} asih03jw29hs00 = { 1, { 2 } };

int lto_sub_199() {

	printf("%u\n"  , asih03jw29hb00.m1);
	printf("%u\n"  , asih03jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29ib03.m1);
	printf("%u\n"  , asih03jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29ib05.m1);
	printf("%u\n"  , asih03jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29hh00.m1);
	printf("%u\n"  , asih03jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29ih03.m1);
	printf("%u\n"  , asih03jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29ih13.m1);
	printf("%u\n"  , asih03jw29ih13.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29hw00.m1);
	printf("%lu\n" , asih03jw29hw00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29iw03.m1);
	printf("%lu\n" , asih03jw29iw03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29iw29.m1);
	printf("%lu\n" , asih03jw29iw29.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29hd00.m1);
	printf("%llu\n", asih03jw29hd00.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29id03.m1);
	printf("%llu\n", (unsigned long long)asih03jw29id03.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29id61.m1);
	printf("%llu\n", (unsigned long long)asih03jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asih03jw29hs00.m1);
	printf("%u\n"  , asih03jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
