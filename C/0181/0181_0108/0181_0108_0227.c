
	
	
	
	

#include <stdio.h>                                              

struct ASIW03JB00HB00 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned char m3;
} asiw03jb00hb00 = { 1, 2 };

struct ASIW03JB00IB03 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned char m3:3;
} asiw03jb00ib03 = { 1, 2 };

struct ASIW03JB00IB05 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned char m3:5;
} asiw03jb00ib05 = { 1, 2 };

struct ASIW03JB00HH00 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned short m3;
} asiw03jb00hh00 = { 1, 2 };

struct ASIW03JB00IH03 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned short m3:3;
} asiw03jb00ih03 = { 1, 2 };

struct ASIW03JB00IH13 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned short m3:13;
} asiw03jb00ih13 = { 1, 2 };

struct ASIW03JB00HW00 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned long m3;
} asiw03jb00hw00 = { 1, 2 };

struct ASIW03JB00IW03 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned long m3:3;
} asiw03jb00iw03 = { 1, 2 };

struct ASIW03JB00IW29 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned long m3:29;
} asiw03jb00iw29 = { 1, 2 };

struct ASIW03JB00HD00 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned long long m3;
} asiw03jb00hd00 = { 1, 2 };

struct ASIW03JB00ID03 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned long long m3:3;
} asiw03jb00id03 = { 1, 2 };

struct ASIW03JB00ID61 {
	unsigned long m1:3;
	unsigned char   :0;
	unsigned long long m3:61;
} asiw03jb00id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW03JB00HS00 {
	unsigned long m1:3;
	unsigned char   :0;
	struct TAGHB00 m3;
} asiw03jb00hs00 = { 1, { 2 } };

int lto_sub_228() {

	printf("%lu\n" , asiw03jb00hb00.m1);
	printf("%u\n"  , asiw03jb00hb00.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00ib03.m1);
	printf("%u\n"  , asiw03jb00ib03.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00ib05.m1);
	printf("%u\n"  , asiw03jb00ib05.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00hh00.m1);
	printf("%u\n"  , asiw03jb00hh00.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00ih03.m1);
	printf("%u\n"  , asiw03jb00ih03.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00ih13.m1);
	printf("%u\n"  , asiw03jb00ih13.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00hw00.m1);
	printf("%lu\n" , asiw03jb00hw00.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00iw03.m1);
	printf("%lu\n" , asiw03jb00iw03.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00iw29.m1);
	printf("%lu\n" , asiw03jb00iw29.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00hd00.m1);
	printf("%llu\n", asiw03jb00hd00.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00id03.m1);
	printf("%llu\n", (unsigned long long)asiw03jb00id03.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00id61.m1);
	printf("%llu\n", (unsigned long long)asiw03jb00id61.m3);
	printf("\n");

	printf("%lu\n" , asiw03jb00hs00.m1);
	printf("%u\n"  , asiw03jb00hs00.m3.m1);
	printf("\n");

	return 0;
}
