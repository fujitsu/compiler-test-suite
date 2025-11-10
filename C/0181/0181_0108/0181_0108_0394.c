
	
	
	
	

#include <stdio.h>                                              

struct ASJH00JH03HB00 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned char m3;
} asjh00jh03hb00 = { 1 };

struct ASJH00JH03IB03 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned char m3:3;
} asjh00jh03ib03 = { 1 };

struct ASJH00JH03IB05 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned char m3:5;
} asjh00jh03ib05 = { 1 };

struct ASJH00JH03HH00 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned short m3;
} asjh00jh03hh00 = { 1 };

struct ASJH00JH03IH03 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned short m3:3;
} asjh00jh03ih03 = { 1 };

struct ASJH00JH03IH13 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned short m3:13;
} asjh00jh03ih13 = { 1 };

struct ASJH00JH03HW00 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned long m3;
} asjh00jh03hw00 = { 1 };

struct ASJH00JH03IW03 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned long m3:3;
} asjh00jh03iw03 = { 1 };

struct ASJH00JH03IW29 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned long m3:29;
} asjh00jh03iw29 = { 1 };

struct ASJH00JH03HD00 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned long long m3;
} asjh00jh03hd00 = { 1 };

struct ASJH00JH03ID03 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned long long m3:3;
} asjh00jh03id03 = { 1 };

struct ASJH00JH03ID61 {
	unsigned short   :0;
	unsigned short   :3;
	unsigned long long m3:61;
} asjh00jh03id61 = { 1 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJH00JH03HS00 {
	unsigned short   :0;
	unsigned short   :3;
	struct TAGHB00 m3;
} asjh00jh03hs00 = { { 1 } };

int lto_sub_395() {

	printf("%u\n"  , asjh00jh03hb00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jh03ib03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jh03ib05.m3);
	printf("\n");

	printf("%u\n"  , asjh00jh03hh00.m3);
	printf("\n");

	printf("%u\n"  , asjh00jh03ih03.m3);
	printf("\n");

	printf("%u\n"  , asjh00jh03ih13.m3);
	printf("\n");

	printf("%lu\n" , asjh00jh03hw00.m3);
	printf("\n");

	printf("%lu\n" , asjh00jh03iw03.m3);
	printf("\n");

	printf("%lu\n" , asjh00jh03iw29.m3);
	printf("\n");

	printf("%llu\n", asjh00jh03hd00.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jh03id03.m3);
	printf("\n");

	printf("%llu\n", (unsigned long long)asjh00jh03id61.m3);
	printf("\n");

	printf("%u\n"  , asjh00jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
