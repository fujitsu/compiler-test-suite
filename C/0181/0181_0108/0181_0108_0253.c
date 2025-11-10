
	
	
	
	

#include <stdio.h>                                              

struct ASIW29JH00HB00 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned char m3;
} asiw29jh00hb00 = { 1, 2 };

struct ASIW29JH00IB03 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned char m3:3;
} asiw29jh00ib03 = { 1, 2 };

struct ASIW29JH00IB05 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned char m3:5;
} asiw29jh00ib05 = { 1, 2 };

struct ASIW29JH00HH00 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned short m3;
} asiw29jh00hh00 = { 1, 2 };

struct ASIW29JH00IH03 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned short m3:3;
} asiw29jh00ih03 = { 1, 2 };

struct ASIW29JH00IH13 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned short m3:13;
} asiw29jh00ih13 = { 1, 2 };

struct ASIW29JH00HW00 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned long m3;
} asiw29jh00hw00 = { 1, 2 };

struct ASIW29JH00IW03 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned long m3:3;
} asiw29jh00iw03 = { 1, 2 };

struct ASIW29JH00IW29 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned long m3:29;
} asiw29jh00iw29 = { 1, 2 };

struct ASIW29JH00HD00 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned long long m3;
} asiw29jh00hd00 = { 1, 2 };

struct ASIW29JH00ID03 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned long long m3:3;
} asiw29jh00id03 = { 1, 2 };

struct ASIW29JH00ID61 {
	unsigned long m1:29;
	unsigned short   :0;
	unsigned long long m3:61;
} asiw29jh00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29JH00HS00 {
	unsigned long m1:29;
	unsigned short   :0;
	struct TAGHB00 m3;
} asiw29jh00hs00 = { 1, { 2 } };

int lto_sub_254() {

	printf("%lu\n" , asiw29jh00hb00.m1);
	printf("%u\n"  , asiw29jh00hb00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00ib03.m1);
	printf("%u\n"  , asiw29jh00ib03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00ib05.m1);
	printf("%u\n"  , asiw29jh00ib05.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00hh00.m1);
	printf("%u\n"  , asiw29jh00hh00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00ih03.m1);
	printf("%u\n"  , asiw29jh00ih03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00ih13.m1);
	printf("%u\n"  , asiw29jh00ih13.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00hw00.m1);
	printf("%lu\n" , asiw29jh00hw00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00iw03.m1);
	printf("%lu\n" , asiw29jh00iw03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00iw29.m1);
	printf("%lu\n" , asiw29jh00iw29.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00hd00.m1);
	printf("%llu\n", asiw29jh00hd00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00id03.m1);
	printf("%llu\n", (unsigned long long)asiw29jh00id03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00id61.m1);
	printf("%llu\n", (unsigned long long)asiw29jh00id61.m3);
	printf("\n");

	printf("%lu\n" , asiw29jh00hs00.m1);
	printf("%u\n"  , asiw29jh00hs00.m3.m1);
	printf("\n");

	return 0;
}
