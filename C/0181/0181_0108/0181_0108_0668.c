
	
	
	
	

#include <stdio.h>                                              

struct ASJB00IH13HB00 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned char m3;
} asjb00ih13hb00 = { 1, 2 };

struct ASJB00IH13IB03 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned char m3:3;
} asjb00ih13ib03 = { 1, 2 };

struct ASJB00IH13IB05 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned char m3:5;
} asjb00ih13ib05 = { 1, 2 };

struct ASJB00IH13HH00 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned short m3;
} asjb00ih13hh00 = { 1, 2 };

struct ASJB00IH13IH03 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned short m3:3;
} asjb00ih13ih03 = { 1, 2 };

struct ASJB00IH13IH13 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned short m3:13;
} asjb00ih13ih13 = { 1, 2 };

struct ASJB00IH13HW00 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned long m3;
} asjb00ih13hw00 = { 1, 2 };

struct ASJB00IH13IW03 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned long m3:3;
} asjb00ih13iw03 = { 1, 2 };

struct ASJB00IH13IW29 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned long m3:29;
} asjb00ih13iw29 = { 1, 2 };

struct ASJB00IH13HD00 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned long long m3;
} asjb00ih13hd00 = { 1, 2 };

struct ASJB00IH13ID03 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned long long m3:3;
} asjb00ih13id03 = { 1, 2 };

struct ASJB00IH13ID61 {
	unsigned char   :0;
	unsigned short m2:13;
	unsigned long long m3:61;
} asjb00ih13id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASJB00IH13HS00 {
	unsigned char   :0;
	unsigned short m2:13;
	struct TAGHB00 m3;
} asjb00ih13hs00 = { 1, { 2 } };

int lto_sub_265() {

	printf("%u\n"  , asjb00ih13hb00.m2);
	printf("%u\n"  , asjb00ih13hb00.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13ib03.m2);
	printf("%u\n"  , asjb00ih13ib03.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13ib05.m2);
	printf("%u\n"  , asjb00ih13ib05.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13hh00.m2);
	printf("%u\n"  , asjb00ih13hh00.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13ih03.m2);
	printf("%u\n"  , asjb00ih13ih03.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13ih13.m2);
	printf("%u\n"  , asjb00ih13ih13.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13hw00.m2);
	printf("%lu\n" , asjb00ih13hw00.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13iw03.m2);
	printf("%lu\n" , asjb00ih13iw03.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13iw29.m2);
	printf("%lu\n" , asjb00ih13iw29.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13hd00.m2);
	printf("%llu\n", asjb00ih13hd00.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13id03.m2);
	printf("%llu\n", (unsigned long long)asjb00ih13id03.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13id61.m2);
	printf("%llu\n", (unsigned long long)asjb00ih13id61.m3);
	printf("\n");

	printf("%u\n"  , asjb00ih13hs00.m2);
	printf("%u\n"  , asjb00ih13hs00.m3.m1);
	printf("\n");

	return 0;
}
