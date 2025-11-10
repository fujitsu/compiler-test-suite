
	
	
	
	

#include <stdio.h>                                              

struct ASJB05JH03HB00 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned char m3;
} asjb05jh03hb00 = { 1 };

struct ASJB05JH03IB03 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned char m3:3;
} asjb05jh03ib03 = { 1 };

struct ASJB05JH03IB05 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned char m3:5;
} asjb05jh03ib05 = { 1 };

struct ASJB05JH03HH00 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned short m3;
} asjb05jh03hh00 = { 1 };

struct ASJB05JH03IH03 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned short m3:3;
} asjb05jh03ih03 = { 1 };

struct ASJB05JH03IH13 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned short m3:13;
} asjb05jh03ih13 = { 1 };

struct ASJB05JH03HW00 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned long m3;
} asjb05jh03hw00 = { 1 };

struct ASJB05JH03IW03 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned long m3:3;
} asjb05jh03iw03 = { 1 };

struct ASJB05JH03IW29 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned long m3:29;
} asjb05jh03iw29 = { 1 };

struct ASJB05JH03HD00 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned long long m3;
} asjb05jh03hd00 = { 1 };

struct ASJB05JH03ID03 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned long long m3:3;
} asjb05jh03id03 = { 1 };

struct ASJB05JH03ID61 {
	unsigned char   :5;
	unsigned short   :3;
	unsigned long long m3:61;
} asjb05jh03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JH03HS00 {
	unsigned char   :5;
	unsigned short   :3;
	struct TAGHB00 m3;
} asjb05jh03hs00 = { { 1 } };

int lto_sub_315() {

	printf("%u\n"  , asjb05jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jh03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb05jh03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb05jh03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jh03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jh03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jh03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
