
	
	
	
	

#include <stdio.h>                                              

struct ASJH13JW29HB00 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned char m3;
} asjh13jw29hb00 = { 1 };

struct ASJH13JW29IB03 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned char m3:3;
} asjh13jw29ib03 = { 1 };

struct ASJH13JW29IB05 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned char m3:5;
} asjh13jw29ib05 = { 1 };

struct ASJH13JW29HH00 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned short m3;
} asjh13jw29hh00 = { 1 };

struct ASJH13JW29IH03 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned short m3:3;
} asjh13jw29ih03 = { 1 };

struct ASJH13JW29IH13 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned short m3:13;
} asjh13jw29ih13 = { 1 };

struct ASJH13JW29HW00 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned long m3;
} asjh13jw29hw00 = { 1 };

struct ASJH13JW29IW03 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned long m3:3;
} asjh13jw29iw03 = { 1 };

struct ASJH13JW29IW29 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned long m3:29;
} asjh13jw29iw29 = { 1 };

struct ASJH13JW29HD00 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned long long m3;
} asjh13jw29hd00 = { 1 };

struct ASJH13JW29ID03 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned long long m3:3;
} asjh13jw29id03 = { 1 };

struct ASJH13JW29ID61 {
	unsigned short   :13;
	unsigned long   :29;
	unsigned long long m3:61;
} asjh13jw29id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JW29HS00 {
	unsigned short   :13;
	unsigned long   :29;
	struct TAGHB00 m3;
} asjh13jw29hs00 = { { 1 } };

int lto_sub_439() {

	printf("%u\n"  , asjh13jw29hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw29ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw29ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw29hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw29ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw29ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw29hw00.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw29iw03.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw29iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jw29hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jw29id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jw29id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw29hs00.m3.m1);
	printf("\n");

	return 0;
}
