
	
	
	
	

#include <stdio.h>                                              

struct ASIW29JD61HB00 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned char m3;
} asiw29jd61hb00 = { 1, 2 };

struct ASIW29JD61IB03 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned char m3:3;
} asiw29jd61ib03 = { 1, 2 };

struct ASIW29JD61IB05 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned char m3:5;
} asiw29jd61ib05 = { 1, 2 };

struct ASIW29JD61HH00 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned short m3;
} asiw29jd61hh00 = { 1, 2 };

struct ASIW29JD61IH03 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned short m3:3;
} asiw29jd61ih03 = { 1, 2 };

struct ASIW29JD61IH13 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned short m3:13;
} asiw29jd61ih13 = { 1, 2 };

struct ASIW29JD61HW00 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned long m3;
} asiw29jd61hw00 = { 1, 2 };

struct ASIW29JD61IW03 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned long m3:3;
} asiw29jd61iw03 = { 1, 2 };

struct ASIW29JD61IW29 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned long m3:29;
} asiw29jd61iw29 = { 1, 2 };

struct ASIW29JD61HD00 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned long long m3;
} asiw29jd61hd00 = { 1, 2 };

struct ASIW29JD61ID03 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned long long m3:3;
} asiw29jd61id03 = { 1, 2 };

struct ASIW29JD61ID61 {
	unsigned long m1:29;
	unsigned long long   :61;
	unsigned long long m3:61;
} asiw29jd61id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29JD61HS00 {
	unsigned long m1:29;
	unsigned long long   :61;
	struct TAGHB00 m3;
} asiw29jd61hs00 = { 1, { 2 } };

int lto_sub_253() {

	printf("%lu\n" , asiw29jd61hb00.m1);
	printf("%u\n"  , asiw29jd61hb00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61ib03.m1);
	printf("%u\n"  , asiw29jd61ib03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61ib05.m1);
	printf("%u\n"  , asiw29jd61ib05.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61hh00.m1);
	printf("%u\n"  , asiw29jd61hh00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61ih03.m1);
	printf("%u\n"  , asiw29jd61ih03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61ih13.m1);
	printf("%u\n"  , asiw29jd61ih13.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61hw00.m1);
	printf("%lu\n" , asiw29jd61hw00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61iw03.m1);
	printf("%lu\n" , asiw29jd61iw03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61iw29.m1);
	printf("%lu\n" , asiw29jd61iw29.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61hd00.m1);
	printf("%llu\n", asiw29jd61hd00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61id03.m1);
	printf("%llu\n", (unsigned long long)asiw29jd61id03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61id61.m1);
	printf("%llu\n", (unsigned long long)asiw29jd61id61.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd61hs00.m1);
	printf("%u\n"  , asiw29jd61hs00.m3.m1);
	printf("\n");

	return 0;
}
