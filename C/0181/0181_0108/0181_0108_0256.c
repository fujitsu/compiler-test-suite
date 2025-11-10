
	
	
	
	

#include <stdio.h>                                              

struct ASIW29JW00HB00 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned char m3;
} asiw29jw00hb00 = { 1, 2 };

struct ASIW29JW00IB03 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned char m3:3;
} asiw29jw00ib03 = { 1, 2 };

struct ASIW29JW00IB05 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned char m3:5;
} asiw29jw00ib05 = { 1, 2 };

struct ASIW29JW00HH00 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned short m3;
} asiw29jw00hh00 = { 1, 2 };

struct ASIW29JW00IH03 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned short m3:3;
} asiw29jw00ih03 = { 1, 2 };

struct ASIW29JW00IH13 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned short m3:13;
} asiw29jw00ih13 = { 1, 2 };

struct ASIW29JW00HW00 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned long m3;
} asiw29jw00hw00 = { 1, 2 };

struct ASIW29JW00IW03 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned long m3:3;
} asiw29jw00iw03 = { 1, 2 };

struct ASIW29JW00IW29 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned long m3:29;
} asiw29jw00iw29 = { 1, 2 };

struct ASIW29JW00HD00 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned long long m3;
} asiw29jw00hd00 = { 1, 2 };

struct ASIW29JW00ID03 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned long long m3:3;
} asiw29jw00id03 = { 1, 2 };

struct ASIW29JW00ID61 {
	unsigned long m1:29;
	unsigned long   :0;
	unsigned long long m3:61;
} asiw29jw00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29JW00HS00 {
	unsigned long m1:29;
	unsigned long   :0;
	struct TAGHB00 m3;
} asiw29jw00hs00 = { 1, { 2 } };

int lto_sub_257() {

	printf("%lu\n" , asiw29jw00hb00.m1);
	printf("%u\n"  , asiw29jw00hb00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00ib03.m1);
	printf("%u\n"  , asiw29jw00ib03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00ib05.m1);
	printf("%u\n"  , asiw29jw00ib05.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00hh00.m1);
	printf("%u\n"  , asiw29jw00hh00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00ih03.m1);
	printf("%u\n"  , asiw29jw00ih03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00ih13.m1);
	printf("%u\n"  , asiw29jw00ih13.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00hw00.m1);
	printf("%lu\n" , asiw29jw00hw00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00iw03.m1);
	printf("%lu\n" , asiw29jw00iw03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00iw29.m1);
	printf("%lu\n" , asiw29jw00iw29.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00hd00.m1);
	printf("%llu\n", asiw29jw00hd00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00id03.m1);
	printf("%llu\n", (unsigned long long)asiw29jw00id03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00id61.m1);
	printf("%llu\n", (unsigned long long)asiw29jw00id61.m3);
	printf("\n");

	printf("%lu\n" , asiw29jw00hs00.m1);
	printf("%u\n"  , asiw29jw00hs00.m3.m1);
	printf("\n");

	return 0;
}
