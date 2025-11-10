
	
	
	
	

#include <stdio.h>                                              

struct ASJB05JB03HB00 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned char m3;
} asjb05jb03hb00 = { 1 };

struct ASJB05JB03IB03 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned char m3:3;
} asjb05jb03ib03 = { 1 };

struct ASJB05JB03IB05 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned char m3:5;
} asjb05jb03ib05 = { 1 };

struct ASJB05JB03HH00 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned short m3;
} asjb05jb03hh00 = { 1 };

struct ASJB05JB03IH03 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned short m3:3;
} asjb05jb03ih03 = { 1 };

struct ASJB05JB03IH13 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned short m3:13;
} asjb05jb03ih13 = { 1 };

struct ASJB05JB03HW00 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned long m3;
} asjb05jb03hw00 = { 1 };

struct ASJB05JB03IW03 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned long m3:3;
} asjb05jb03iw03 = { 1 };

struct ASJB05JB03IW29 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned long m3:29;
} asjb05jb03iw29 = { 1 };

struct ASJB05JB03HD00 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned long long m3;
} asjb05jb03hd00 = { 1 };

struct ASJB05JB03ID03 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned long long m3:3;
} asjb05jb03id03 = { 1 };

struct ASJB05JB03ID61 {
	unsigned char   :5;
	unsigned char   :3;
	unsigned long long m3:61;
} asjb05jb03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB05JB03HS00 {
	unsigned char   :5;
	unsigned char   :3;
	struct TAGHB00 m3;
} asjb05jb03hs00 = { { 1 } };

int lto_sub_309() {

	printf("%u\n"  , asjb05jb03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjb05jb03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjb05jb03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjb05jb03iw29.m3);
	printf("\n");

	printf("%llu\n", asjb05jb03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jb03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjb05jb03id61.m3);
	printf("\n");

	printf("%u\n"  , asjb05jb03hs00.m3.m1);
	printf("\n");

	return 0;
}
