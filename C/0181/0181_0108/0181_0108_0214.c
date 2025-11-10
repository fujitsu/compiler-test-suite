
	
	
	
	

#include <stdio.h>                                              

struct ASIH13JH03HB00 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned char m3;
} asih13jh03hb00 = { 1, 2 };

struct ASIH13JH03IB03 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned char m3:3;
} asih13jh03ib03 = { 1, 2 };

struct ASIH13JH03IB05 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned char m3:5;
} asih13jh03ib05 = { 1, 2 };

struct ASIH13JH03HH00 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned short m3;
} asih13jh03hh00 = { 1, 2 };

struct ASIH13JH03IH03 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned short m3:3;
} asih13jh03ih03 = { 1, 2 };

struct ASIH13JH03IH13 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned short m3:13;
} asih13jh03ih13 = { 1, 2 };

struct ASIH13JH03HW00 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned long m3;
} asih13jh03hw00 = { 1, 2 };

struct ASIH13JH03IW03 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned long m3:3;
} asih13jh03iw03 = { 1, 2 };

struct ASIH13JH03IW29 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned long m3:29;
} asih13jh03iw29 = { 1, 2 };

struct ASIH13JH03HD00 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned long long m3;
} asih13jh03hd00 = { 1, 2 };

struct ASIH13JH03ID03 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned long long m3:3;
} asih13jh03id03 = { 1, 2 };

struct ASIH13JH03ID61 {
	unsigned short m1:13;
	unsigned short   :3;
	unsigned long long m3:61;
} asih13jh03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13JH03HS00 {
	unsigned short m1:13;
	unsigned short   :3;
	struct TAGHB00 m3;
} asih13jh03hs00 = { 1, { 2 } };

int lto_sub_215() {

	printf("%u\n"  , asih13jh03hb00.m1);
	printf("%u\n"  , asih13jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03ib03.m1);
	printf("%u\n"  , asih13jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03ib05.m1);
	printf("%u\n"  , asih13jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03hh00.m1);
	printf("%u\n"  , asih13jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03ih03.m1);
	printf("%u\n"  , asih13jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03ih13.m1);
	printf("%u\n"  , asih13jh03ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03hw00.m1);
	printf("%lu\n" , asih13jh03hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03iw03.m1);
	printf("%lu\n" , asih13jh03iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03iw29.m1);
	printf("%lu\n" , asih13jh03iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03hd00.m1);
	printf("%llu\n", asih13jh03hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03id03.m1);
	printf("%llu\n", (unsigned long long)asih13jh03id03.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03id61.m1);
	printf("%llu\n", (unsigned long long)asih13jh03id61.m3);
	printf("\n");

	printf("%u\n"  , asih13jh03hs00.m1);
	printf("%u\n"  , asih13jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
