
	
	
	
	

#include <stdio.h>                                              

struct ASJH03JH13HB00 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned char m3;
} asjh03jh13hb00 = { 1 };

struct ASJH03JH13IB03 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned char m3:3;
} asjh03jh13ib03 = { 1 };

struct ASJH03JH13IB05 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned char m3:5;
} asjh03jh13ib05 = { 1 };

struct ASJH03JH13HH00 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned short m3;
} asjh03jh13hh00 = { 1 };

struct ASJH03JH13IH03 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned short m3:3;
} asjh03jh13ih03 = { 1 };

struct ASJH03JH13IH13 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned short m3:13;
} asjh03jh13ih13 = { 1 };

struct ASJH03JH13HW00 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned long m3;
} asjh03jh13hw00 = { 1 };

struct ASJH03JH13IW03 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned long m3:3;
} asjh03jh13iw03 = { 1 };

struct ASJH03JH13IW29 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned long m3:29;
} asjh03jh13iw29 = { 1 };

struct ASJH03JH13HD00 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned long long m3;
} asjh03jh13hd00 = { 1 };

struct ASJH03JH13ID03 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned long long m3:3;
} asjh03jh13id03 = { 1 };

struct ASJH03JH13ID61 {
	unsigned short   :3;
	unsigned short   :13;
	unsigned long long m3:61;
} asjh03jh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH03JH13HS00 {
	unsigned short   :3;
	unsigned short   :13;
	struct TAGHB00 m3;
} asjh03jh13hs00 = { { 1 } };

int lto_sub_416() {

	printf("%u\n"  , asjh03jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh13ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh03jh13hw00.m3);
	printf("\n");

	printf("%lu\n" , asjh03jh13iw03.m3);
	printf("\n");

	printf("%lu\n" , asjh03jh13iw29.m3);
	printf("\n");

	printf("%llu\n", asjh03jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh03jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asjh03jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
