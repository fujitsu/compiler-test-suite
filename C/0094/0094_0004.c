#include  <stdio.h>
char i1[]="0";
char i2[]="01";
char i3[]="012";
char i4[]="0123";
char i5[]="01234";
char i6[]="012345";
char i7[]="0123456";
char i8[]="01234567";
char i9[]="012345678";
char j1[]="9";
char j2[]="09";
char j3[]="019";
char j4[]="0129";
char j5[]="01239";
char j6[]="012349";
char j7[]="0123459";
char j8[]="01234569";
char j9[]="012345679";
char k5[]="01294";
char k6[]="012395";
char k7[]="0123496";
char k8[]="01234597";
char k9[]="012345698";
char l5[]="01994";
char l6[]="012995";
char l7[]="0123996";
char l8[]="01234997";
char l9[]="012345998";

union {
	long double lw;
	char o[16];
} xx,yy;
int main(){

	char * strcpy(char *,char *);
	int    strcmp(char *,char *);

  	if( strcmp(i1,i1)    ) puts("NG 1-1-1");
	if( strcmp(i2,i2)    ) puts("NG 1-1-2");
	if( strcmp(i3,i3)    ) puts("NG 1-1-3");
	if( strcmp(i4,i4)    ) puts("NG 1-1-4");
	if( strcmp(i5,i5)    ) puts("NG 1-1-5");
	if( strcmp(i6,i6)    ) puts("NG 1-1-6");
	if( strcmp(i7,i7)    ) puts("NG 1-1-7");
	if( strcmp(i8,i8)    ) puts("NG 1-1-8");
	if( strcmp(i9,i9)    ) puts("NG 1-1-9");

	if( strcmp(i1,i2)>=0 ) puts("NG 1-2-1");
	if( strcmp(i2,i3)>=0 ) puts("NG 1-2-2");
	if( strcmp(i3,i4)>=0 ) puts("NG 1-2-3");
	if( strcmp(i4,i5)>=0 ) puts("NG 1-2-4");
	if( strcmp(i5,i6)>=0 ) puts("NG 1-2-5");
	if( strcmp(i6,i7)>=0 ) puts("NG 1-2-6");
	if( strcmp(i7,i8)>=0 ) puts("NG 1-2-7");
	if( strcmp(i8,i9)>=0 ) puts("NG 1-2-8");

	if( strcmp(i2,i1)<=0 ) puts("NG 1-3-1");
	if( strcmp(i3,i2)<=0 ) puts("NG 1-3-2");
	if( strcmp(i4,i3)<=0 ) puts("NG 1-3-3");
	if( strcmp(i5,i4)<=0 ) puts("NG 1-3-4");
	if( strcmp(i6,i5)<=0 ) puts("NG 1-3-5");
	if( strcmp(i7,i6)<=0 ) puts("NG 1-3-6");
	if( strcmp(i8,i7)<=0 ) puts("NG 1-3-7");
	if( strcmp(i9,i8)<=0 ) puts("NG 1-3-8");

	if( strcmp(i1,j1)>=0 ) puts("NG 1-4-1");
	if( strcmp(i2,j2)>=0 ) puts("NG 1-4-2");
	if( strcmp(i3,j3)>=0 ) puts("NG 1-4-3");
	if( strcmp(i4,j4)>=0 ) puts("NG 1-4-4");
	if( strcmp(i5,j5)>=0 ) puts("NG 1-4-5");
	if( strcmp(i6,j6)>=0 ) puts("NG 1-4-6");
	if( strcmp(i7,j7)>=0 ) puts("NG 1-4-7");
	if( strcmp(i8,j8)>=0 ) puts("NG 1-4-8");
	if( strcmp(i9,j9)>=0 ) puts("NG 1-4-9");

	if( strcmp(j1,i1)<=0 ) puts("NG 1-5-1");
	if( strcmp(j2,i2)<=0 ) puts("NG 1-5-2");
	if( strcmp(j3,i3)<=0 ) puts("NG 1-5-3");
	if( strcmp(j4,i4)<=0 ) puts("NG 1-5-4");
	if( strcmp(j5,i5)<=0 ) puts("NG 1-5-5");
	if( strcmp(j6,i6)<=0 ) puts("NG 1-5-6");
	if( strcmp(j7,i7)<=0 ) puts("NG 1-5-7");
	if( strcmp(j8,i8)<=0 ) puts("NG 1-5-8");
	if( strcmp(j9,i9)<=0 ) puts("NG 1-5-9");

	if( strcmp(k5,i5)<=0 ) puts("NG 1-6-1");
	if( strcmp(k6,i6)<=0 ) puts("NG 1-6-2");
	if( strcmp(k7,i7)<=0 ) puts("NG 1-6-3");
	if( strcmp(k8,i8)<=0 ) puts("NG 1-6-4");
	if( strcmp(k9,i9)<=0 ) puts("NG 1-6-5");

	if( strcmp(l5,i5)<=0 ) puts("NG 1-7-1");
	if( strcmp(l6,i6)<=0 ) puts("NG 1-7-2");
	if( strcmp(l7,i7)<=0 ) puts("NG 1-7-3");
	if( strcmp(l8,i8)<=0 ) puts("NG 1-7-4");
	if( strcmp(l9,i9)<=0 ) puts("NG 1-7-5");

	if( strcpy(xx.o,i9)!=xx.o ) puts("NG 2-1-1");
	if( strcmp(xx.o,i9)       ) puts("NG 2-1-2");

	if( strcmp(strcpy(yy.o+0,xx.o+0),i9+0) ) puts("NG 2-2-1");
	if( strcmp(strcpy(yy.o+1,xx.o+0),i9+0) ) puts("NG 2-2-2");
	if( strcmp(strcpy(yy.o+2,xx.o+0),i9+0) ) puts("NG 2-2-3");
	if( strcmp(strcpy(yy.o+3,xx.o+0),i9+0) ) puts("NG 2-2-4");
	if( strcmp(strcpy(yy.o+4,xx.o+0),i9+0) ) puts("NG 2-2-5");

	if( strcmp(strcpy(yy.o+0,xx.o+1),i9+1) ) puts("NG 2-3-1");
	if( strcmp(strcpy(yy.o+1,xx.o+1),i9+1) ) puts("NG 2-3-2");
	if( strcmp(strcpy(yy.o+2,xx.o+1),i9+1) ) puts("NG 2-3-3");
	if( strcmp(strcpy(yy.o+3,xx.o+1),i9+1) ) puts("NG 2-3-4");
	if( strcmp(strcpy(yy.o+4,xx.o+1),i9+1) ) puts("NG 2-3-5");

	if( strcmp(strcpy(yy.o+0,xx.o+2),i9+2) ) puts("NG 2-4-1");
	if( strcmp(strcpy(yy.o+1,xx.o+2),i9+2) ) puts("NG 2-4-2");
	if( strcmp(strcpy(yy.o+2,xx.o+2),i9+2) ) puts("NG 2-4-3");
	if( strcmp(strcpy(yy.o+3,xx.o+2),i9+2) ) puts("NG 2-4-4");
	if( strcmp(strcpy(yy.o+4,xx.o+2),i9+2) ) puts("NG 2-4-5");

	if( strcmp(strcpy(yy.o+0,xx.o+3),i9+3) ) puts("NG 2-5-1");
	if( strcmp(strcpy(yy.o+1,xx.o+3),i9+3) ) puts("NG 2-5-2");
	if( strcmp(strcpy(yy.o+2,xx.o+3),i9+3) ) puts("NG 2-5-3");
	if( strcmp(strcpy(yy.o+3,xx.o+3),i9+3) ) puts("NG 2-5-4");
	if( strcmp(strcpy(yy.o+4,xx.o+3),i9+3) ) puts("NG 2-5-5");

	if( strcmp(strcpy(yy.o+0,xx.o+6),i9+6) ) puts("NG 2-6-1");
	if( strcmp(strcpy(yy.o+1,xx.o+6),i9+6) ) puts("NG 2-6-2");
	if( strcmp(strcpy(yy.o+2,xx.o+6),i9+6) ) puts("NG 2-6-3");
	if( strcmp(strcpy(yy.o+3,xx.o+6),i9+6) ) puts("NG 2-6-4");
	if( strcmp(strcpy(yy.o+4,xx.o+6),i9+6) ) puts("NG 2-6-5");

	if( strcmp(strcpy(yy.o+0,xx.o+7),i9+7) ) puts("NG 2-7-1");
	if( strcmp(strcpy(yy.o+1,xx.o+7),i9+7) ) puts("NG 2-7-2");
	if( strcmp(strcpy(yy.o+2,xx.o+7),i9+7) ) puts("NG 2-7-3");
	if( strcmp(strcpy(yy.o+3,xx.o+7),i9+7) ) puts("NG 2-7-4");
	if( strcmp(strcpy(yy.o+4,xx.o+7),i9+7) ) puts("NG 2-7-5");

	if( strcmp(strcpy(yy.o+0,xx.o+8),i9+8) ) puts("NG 2-8-1");
	if( strcmp(strcpy(yy.o+1,xx.o+8),i9+8) ) puts("NG 2-8-2");
	if( strcmp(strcpy(yy.o+2,xx.o+8),i9+8) ) puts("NG 2-8-3");
	if( strcmp(strcpy(yy.o+3,xx.o+8),i9+8) ) puts("NG 2-8-4");
	if( strcmp(strcpy(yy.o+4,xx.o+8),i9+8) ) puts("NG 2-8-5");

	if( strcmp(strcpy(yy.o+0,xx.o+9),i9+9) ) puts("NG 2-9-1");
	if( strcmp(strcpy(yy.o+1,xx.o+9),i9+9) ) puts("NG 2-9-2");
	if( strcmp(strcpy(yy.o+2,xx.o+9),i9+9) ) puts("NG 2-9-3");
	if( strcmp(strcpy(yy.o+3,xx.o+9),i9+9) ) puts("NG 2-9-4");
	if( strcmp(strcpy(yy.o+4,xx.o+9),i9+9) ) puts("NG 2-9-5");

	puts("caka0004.c ended\n");

}
