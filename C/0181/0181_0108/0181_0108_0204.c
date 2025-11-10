
	
	
	
	

#include <stdio.h>                                              

struct ASIH13IH13HB00 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned char m3;
} asih13ih13hb00 = { 1, 2, 3 };

struct ASIH13IH13IB03 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned char m3:3;
} asih13ih13ib03 = { 1, 2, 3 };

struct ASIH13IH13IB05 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned char m3:5;
} asih13ih13ib05 = { 1, 2, 3 };

struct ASIH13IH13HH00 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned short m3;
} asih13ih13hh00 = { 1, 2, 3 };

struct ASIH13IH13IH03 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned short m3:3;
} asih13ih13ih03 = { 1, 2, 3 };

struct ASIH13IH13IH13 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned short m3:13;
} asih13ih13ih13 = { 1, 2, 3 };

struct ASIH13IH13HW00 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned long m3;
} asih13ih13hw00 = { 1, 2, 3 };

struct ASIH13IH13IW03 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned long m3:3;
} asih13ih13iw03 = { 1, 2, 3 };

struct ASIH13IH13IW29 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned long m3:29;
} asih13ih13iw29 = { 1, 2, 3 };

struct ASIH13IH13HD00 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned long long m3;
} asih13ih13hd00 = { 1, 2, 3 };

struct ASIH13IH13ID03 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned long long m3:3;
} asih13ih13id03 = { 1, 2, 3 };

struct ASIH13IH13ID61 {
	unsigned short m1:13;
	unsigned short m2:13;
	unsigned long long m3:61;
} asih13ih13id61 = { 1, 2, 3 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIH13IH13HS00 {
	unsigned short m1:13;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asih13ih13hs00 = { 1, 2, { 3 } };

int lto_sub_205() {

	printf("%u\n"  , asih13ih13hb00.m1);
	printf("%u\n"  , asih13ih13hb00.m2);
	printf("%u\n"  , asih13ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13ib03.m1);
	printf("%u\n"  , asih13ih13ib03.m2);
	printf("%u\n"  , asih13ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13ib05.m1);
	printf("%u\n"  , asih13ih13ib05.m2);
	printf("%u\n"  , asih13ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13hh00.m1);
	printf("%u\n"  , asih13ih13hh00.m2);
	printf("%u\n"  , asih13ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13ih03.m1);
	printf("%u\n"  , asih13ih13ih03.m2);
	printf("%u\n"  , asih13ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13ih13.m1);
	printf("%u\n"  , asih13ih13ih13.m2);
	printf("%u\n"  , asih13ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13hw00.m1);
	printf("%u\n"  , asih13ih13hw00.m2);
	printf("%lu\n" , asih13ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13iw03.m1);
	printf("%u\n"  , asih13ih13iw03.m2);
	printf("%lu\n" , asih13ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13iw29.m1);
	printf("%u\n"  , asih13ih13iw29.m2);
	printf("%lu\n" , asih13ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13hd00.m1);
	printf("%u\n"  , asih13ih13hd00.m2);
	printf("%llu\n", asih13ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13id03.m1);
	printf("%u\n"  , asih13ih13id03.m2);
	printf("%llu\n", (unsigned long long)asih13ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13id61.m1);
	printf("%u\n"  , asih13ih13id61.m2);
	printf("%llu\n", (unsigned long long)asih13ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asih13ih13hs00.m1);
	printf("%u\n"  , asih13ih13hs00.m2);
	printf("%u\n"  , asih13ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
