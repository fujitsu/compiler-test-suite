#include <stdio.h>                                              

struct ASIW29JH03HB00 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned char m3;
} asiw29jh03hb00 = { 1, 2 };

struct ASIW29JH03IB03 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned char m3:3;
} asiw29jh03ib03 = { 1, 2 };

struct ASIW29JH03IB05 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned char m3:5;
} asiw29jh03ib05 = { 1, 2 };

struct ASIW29JH03HH00 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned short m3;
} asiw29jh03hh00 = { 1, 2 };

struct ASIW29JH03IH03 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned short m3:3;
} asiw29jh03ih03 = { 1, 2 };

struct ASIW29JH03IH13 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned short m3:13;
} asiw29jh03ih13 = { 1, 2 };

struct ASIW29JH03HW00 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned long m3;
} asiw29jh03hw00 = { 1, 2 };

struct ASIW29JH03IW03 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned long m3:3;
} asiw29jh03iw03 = { 1, 2 };

struct ASIW29JH03IW29 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned long m3:29;
} asiw29jh03iw29 = { 1, 2 };

struct ASIW29JH03HD00 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned long long m3;
} asiw29jh03hd00 = { 1, 2 };

struct ASIW29JH03ID03 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned long long m3:3;
} asiw29jh03id03 = { 1, 2 };

struct ASIW29JH03ID61 {
	unsigned long m1:29;
	unsigned short   :3;
	unsigned long long m3:61;
} asiw29jh03id61 = { 1, 2 };

struct TAGHB00 {
	unsigned char m1;
};

struct ASIW29JH03HS00 {
	unsigned long m1:29;
	unsigned short   :3;
	struct TAGHB00 m3;
} asiw29jh03hs00 = { 1, { 2 } };

int main() {

	printf("%d\n" , asiw29jh03hb00.m1);
	printf("%u\n"  , asiw29jh03hb00.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03ib03.m1);
	printf("%u\n"  , asiw29jh03ib03.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03ib05.m1);
	printf("%u\n"  , asiw29jh03ib05.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03hh00.m1);
	printf("%u\n"  , asiw29jh03hh00.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03ih03.m1);
	printf("%u\n"  , asiw29jh03ih03.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03ih13.m1);
	printf("%u\n"  , asiw29jh03ih13.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03hw00.m1);
	printf("%lu\n" , asiw29jh03hw00.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03iw03.m1);
	printf("%d\n" , asiw29jh03iw03.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03iw29.m1);
	printf("%d\n" , asiw29jh03iw29.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03hd00.m1);
	printf("%llu\n", asiw29jh03hd00.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03id03.m1);
	printf("%llu\n", (unsigned long long)asiw29jh03id03.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03id61.m1);
	printf("%llu\n", (unsigned long long)asiw29jh03id61.m3);
	printf("\n");

	printf("%d\n" , asiw29jh03hs00.m1);
	printf("%u\n"  , asiw29jh03hs00.m3.m1);
	printf("\n");

	return 0;
}
