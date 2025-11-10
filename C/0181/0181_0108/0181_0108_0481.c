
	
	
	
	

#include <stdio.h>                                              

struct ASJW29JH13HB00 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned char m3;
} asjw29jh13hb00 = { 1 };

struct ASJW29JH13IB03 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned char m3:3;
} asjw29jh13ib03 = { 1 };

struct ASJW29JH13IB05 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned char m3:5;
} asjw29jh13ib05 = { 1 };

struct ASJW29JH13HH00 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned short m3;
} asjw29jh13hh00 = { 1 };

struct ASJW29JH13IH03 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned short m3:3;
} asjw29jh13ih03 = { 1 };

struct ASJW29JH13IH13 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned short m3:13;
} asjw29jh13ih13 = { 1 };

struct ASJW29JH13HW00 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned long m3;
} asjw29jh13hw00 = { 1 };

struct ASJW29JH13IW03 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned long m3:3;
} asjw29jh13iw03 = { 1 };

struct ASJW29JH13IW29 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned long m3:29;
} asjw29jh13iw29 = { 1 };

struct ASJW29JH13HD00 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned long long m3;
} asjw29jh13hd00 = { 1 };

struct ASJW29JH13ID03 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned long long m3:3;
} asjw29jh13id03 = { 1 };

struct ASJW29JH13ID61 {
	unsigned long   :29;
	unsigned short   :13;
	unsigned long long m3:61;
} asjw29jh13id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJW29JH13HS00 {
	unsigned long   :29;
	unsigned short   :13;
	struct TAGHB00 m3;
} asjw29jh13hs00 = { { 1 } };

int lto_sub_496() {

	printf("%u\n"  , asjw29jh13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh13ih13.m3);
	printf("\n");

	printf("%lu\n" , asjw29jh13hw00.m3);
	printf("\n");

	printf("%lu\n" , asjw29jh13iw03.m3);
	printf("\n");

	printf("%lu\n" , asjw29jh13iw29.m3);
	printf("\n");

	printf("%llu\n", asjw29jh13hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jh13id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjw29jh13id61.m3);
	printf("\n");

	printf("%u\n"  , asjw29jh13hs00.m3.m1);
	printf("\n");

	return 0;
}
