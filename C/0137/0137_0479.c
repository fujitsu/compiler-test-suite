#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
     signed long long int ia8;
   unsigned long long int ua8;
     signed int ia4;
   unsigned int ua4;
     signed short int ia2;
   unsigned short int ua2;
     signed char ia1;
   unsigned char ua1;
   
   ia8=0xf000111100001111LL;

   ia1 = ia8;
	if(ia1 == 0x11)
		printf("comk2014-(01) ok\n");
	else 	printf("comk2014-(01) ng %x\n",*(int *)&ia1);

   ia2 = ia8;
	if(ia2 == 0x1111)	
		printf("comk2014-(02) ok\n");
	else 	printf("comk2014-(02) ng %x\n",*(int *)&ia2);

   ia4 = ia8;
	if(ia4 == 0x00001111)
		printf("comk2014-(03) ok\n");
	else 	printf("comk2014-(03) ng%x\n",*(int *)&ia4);

   ua1 = ia8;
	if(ua1 == 0x11)
		printf("comk2014-(04) ok\n");
	else 	printf("comk2014-(04) ng%x\n",*(int *)&ua1);

   ua2 = ia8;
	if(ua2 == 0x1111)
		printf("comk2014-(05) ok\n");
	else 	printf("comk2014-(05) ng%x\n",*(int *)&ua2);

   ua4 = ia8;
	if(ua4 == 0x00001111)
		printf("comk2014-(06) ok\n");
	else 	printf("comk2014-(06) ng%x\n",*(int *)&ua4);

   ua8 = ia8;
	if(ua8 == 0xf000111100001111LL)
		printf("comk2014-(07) ok\n");
	else	printf("comk2014-(07) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua8=0x1010101010101010LL;
	
   ia1 = ua8;
	if(ia1 == 0x10)
		printf("comk2014-(08) ok\n");
	else 	printf("comk2014-(08) ng %x\n",*(int *)&ia1);

   ia2 = ua8;
	if(ia2 == 0x1010)
		printf("comk2014-(09) ok\n");
	else	printf("comk2014-(09) ng %x\n",*(int *)&ia2);

   ia4 = ua8;
 	if(ia4 == 0x10101010)
		printf("comk2014-(10) ok\n");
	else	printf("comk2014-(10) ng %x\n",*(int *)&ia4);

   ia8 = ua8;
	if(ia8 == 0x1010101010101010LL)
		printf("comk2014-(11) ok\n");
	else 	printf("comk2014-(11) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua1 = ua8;
	if(ua1 == 0x10)
		printf("comk2014-(12) ok\n");
	else	printf("comk2014-(12) ng %x\n",*(int *)&ua1);

   ua2 = ua8;
	if(ua2 == 0x1010)
		printf("comk2014-(13) ok\n");
	else	printf("comk2014-(13) ng %x\n",*(int *)&ua2);

   ua4 = ua8;
	if(ua4 == 0x10101010)
		printf("comk2014-(14) ok\n");
	else	printf("comk2014-(14) ng %x\n",*(int *)&ua4);

   ia1=0xf1;

   ia8 = ia1;
	if(ia8 == 0xfffffffffffffff1LL)
		printf("comk2014-(15) ok\n");
	else	printf("comk2014-(15) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ia1;
	if(ua8 == 0xfffffffffffffff1LL)
		printf("comk2014-(16) ok\n");
	else	printf("comk2014-(16) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ia2=0xf001;

   ia8 = ia2;
	if(ia8 == 0xfffffffffffff001LL)
		printf("comk2014-(17) ok\n");
	else	printf("comk2014-(17) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ia2;
	if(ua8 == 0xfffffffffffff001LL)
		printf("comk2014-(18) ok\n");
	else	printf("comk2014-(18) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ia4=0xf0001111;
	
   ia8 = ia4;
	if(ia8 == 0xfffffffff0001111LL)			
		printf("comk2014-(19) ok\n");
	else	printf("comk2014-(19) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ia4;
	if(ua8 == 0xfffffffff0001111LL)
		printf("comk2014-(20) ok\n");
	else	printf("comk2014-(20) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua1=0xf1;
	
   ia8 = ua1;
	if(ia8 == 0x00000000000000f1LL)
		printf("comk2014-(21) ok\n");
	else	printf("comk2014-(21) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ua1;
	if(ua8 == 0x00000000000000f1LL)
		printf("comk2014-(22) ok\n");
	else	printf("comk2014-(22) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));
   ua2=0xf001;

   ia8 = ua2;
	if(ia8 == 0x000000000000f001LL)
		printf("comk2014-(23) ok\n");
	else	printf("comk2014-(23) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ua2;
	if(ua8 == 0x000000000000f001LL)
		printf("comk2014-(24) ok\n");
	else	printf("comk2014-(24) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua4=0xf0001111;

   ia8 = ua4;
	if(ia8 == 0x00000000f0001111LL)
		printf("comk2014-(25) ok\n");
	else	printf("comk2014-(25) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));
	
   ua8 = ua4;
	if(ua8 == 0x00000000f0001111LL)
		printf("comk2014-(26) ok\n");
	else	printf("comk2014-(26) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));
exit (0);
 }
   
