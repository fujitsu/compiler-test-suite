                                                             
#include <stdio.h>                                              

struct TAG { char m1; short m2; };

struct JSHB00HA01IH11HS00JW00HB00 {
	unsigned char  m1;
	  signed char  m2[2];
	  signed short m3:11;
	struct   TAG   m4;
	int              :0;
	unsigned char  m5;
} jshb00ha01ih11hs00jw00hb00 = { 1, -2, -3, -4, 5, -6, 7 };

int main() {

	printf("%u\n"  ,jshb00ha01ih11hs00jw00hb00.m1);
	printf("%d\n"  ,jshb00ha01ih11hs00jw00hb00.m2[0]);
	printf("%d\n"  ,jshb00ha01ih11hs00jw00hb00.m2[1]);
	printf("%d\n"  ,jshb00ha01ih11hs00jw00hb00.m3);
	printf("%u\n"  ,jshb00ha01ih11hs00jw00hb00.m4.m1);
	printf("%d\n"  ,jshb00ha01ih11hs00jw00hb00.m4.m2);
	printf("%u\n"  ,jshb00ha01ih11hs00jw00hb00.m5);
	printf("\n");

	return 0;
}
