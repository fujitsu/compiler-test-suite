
	
	
	
	

#include <stdio.h>                                              

struct ASJH13JW00HB00 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned char m3;
} asjh13jw00hb00 = { 1 };

struct ASJH13JW00IB03 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned char m3:3;
} asjh13jw00ib03 = { 1 };

struct ASJH13JW00IB05 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned char m3:5;
} asjh13jw00ib05 = { 1 };

struct ASJH13JW00HH00 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned short m3;
} asjh13jw00hh00 = { 1 };

struct ASJH13JW00IH03 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned short m3:3;
} asjh13jw00ih03 = { 1 };

struct ASJH13JW00IH13 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned short m3:13;
} asjh13jw00ih13 = { 1 };

struct ASJH13JW00HW00 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned long m3;
} asjh13jw00hw00 = { 1 };

struct ASJH13JW00IW03 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned long m3:3;
} asjh13jw00iw03 = { 1 };

struct ASJH13JW00IW29 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned long m3:29;
} asjh13jw00iw29 = { 1 };

struct ASJH13JW00HD00 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned long long m3;
} asjh13jw00hd00 = { 1 };

struct ASJH13JW00ID03 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned long long m3:3;
} asjh13jw00id03 = { 1 };

struct ASJH13JW00ID61 {
	unsigned short   :13;
	unsigned long   :0;
	unsigned long long m3:61;
} asjh13jw00id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH13JW00HS00 {
	unsigned short   :13;
	unsigned long   :0;
	struct TAGHB00 m3;
} asjh13jw00hs00 = { { 1 } };

int lto_sub_437() {

	printf("%u\n"  , asjh13jw00hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw00ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw00ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw00hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw00ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw00hw00.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw00iw03.m3);
	printf("\n");

	printf("%lu\n" , asjh13jw00iw29.m3);
	printf("\n");

	printf("%llu\n", asjh13jw00hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jw00id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh13jw00id61.m3);
	printf("\n");

	printf("%u\n"  , asjh13jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
