
	
	
	
	

#include <stdio.h>                                              

struct ASIW29JD03HB00 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned char m3;
} asiw29jd03hb00 = { 1, 2 };

struct ASIW29JD03IB03 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned char m3:3;
} asiw29jd03ib03 = { 1, 2 };

struct ASIW29JD03IB05 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned char m3:5;
} asiw29jd03ib05 = { 1, 2 };

struct ASIW29JD03HH00 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned short m3;
} asiw29jd03hh00 = { 1, 2 };

struct ASIW29JD03IH03 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned short m3:3;
} asiw29jd03ih03 = { 1, 2 };

struct ASIW29JD03IH13 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned short m3:13;
} asiw29jd03ih13 = { 1, 2 };

struct ASIW29JD03HW00 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned long m3;
} asiw29jd03hw00 = { 1, 2 };

struct ASIW29JD03IW03 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned long m3:3;
} asiw29jd03iw03 = { 1, 2 };

struct ASIW29JD03IW29 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned long m3:29;
} asiw29jd03iw29 = { 1, 2 };

struct ASIW29JD03HD00 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned long long m3;
} asiw29jd03hd00 = { 1, 2 };

struct ASIW29JD03ID03 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned long long m3:3;
} asiw29jd03id03 = { 1, 2 };

struct ASIW29JD03ID61 {
	unsigned long m1:29;
	unsigned long long   :3;
	unsigned long long m3:61;
} asiw29jd03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29JD03HS00 {
	unsigned long m1:29;
	unsigned long long   :3;
	struct TAGHB00 m3;
} asiw29jd03hs00 = { 1, { 2 } };

int lto_sub_252() {

	printf("%lu\n" , asiw29jd03hb00.m1);
	printf("%u\n"  , asiw29jd03hb00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03ib03.m1);
	printf("%u\n"  , asiw29jd03ib03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03ib05.m1);
	printf("%u\n"  , asiw29jd03ib05.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03hh00.m1);
	printf("%u\n"  , asiw29jd03hh00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03ih03.m1);
	printf("%u\n"  , asiw29jd03ih03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03ih13.m1);
	printf("%u\n"  , asiw29jd03ih13.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03hw00.m1);
	printf("%lu\n" , asiw29jd03hw00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03iw03.m1);
	printf("%lu\n" , asiw29jd03iw03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03iw29.m1);
	printf("%lu\n" , asiw29jd03iw29.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03hd00.m1);
	printf("%llu\n", asiw29jd03hd00.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03id03.m1);
	printf("%llu\n", (unsigned long long)asiw29jd03id03.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03id61.m1);
	printf("%llu\n", (unsigned long long)asiw29jd03id61.m3);
	printf("\n");

	printf("%lu\n" , asiw29jd03hs00.m1);
	printf("%u\n"  , asiw29jd03hs00.m3.m1);
	printf("\n");

	return 0;
}
