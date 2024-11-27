#include <stdio.h>

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
		printf("(01) ok\n");
	else 	printf("(01) ng %x\n",*(int *)&ia1);

   ia2 = ia8;
	if(ia2 == 0x1111)	
		printf("(02) ok\n");
	else 	printf("(02) ng %x\n",*(int *)&ia2);

   ia4 = ia8;
#if INT64
	if(ia4 == 0xf000111100001111)
#else
	if(ia4 == 0x00001111)
#endif
		printf("(03) ok\n");
	else 	printf("(03) ng%x\n",*(int *)&ia4);

   ua1 = ia8;
	if(ua1 == 0x11)
		printf("(04) ok\n");
	else 	printf("(04) ng%x\n",*(int *)&ua1);

   ua2 = ia8;
	if(ua2 == 0x1111)
		printf("(05) ok\n");
	else 	printf("(05) ng%x\n",*(int *)&ua2);

   ua4 = ia8;
#if INT64
	if(ua4 == 0xf000111100001111)
#else
	if(ua4 == 0x00001111)
#endif
		printf("(06) ok\n");
	else 	printf("(06) ng%x\n",*(int *)&ua4);

   ua8 = ia8;
	if(ua8 == 0xf000111100001111ULL)
		printf("(07) ok\n");
	else	printf("(07) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua8=0x1010101010101010ULL;
	
   ia1 = ua8;
	if(ia1 == 0x10)
		printf("(08) ok\n");
	else 	printf("(08) ng %x\n",*(int *)&ia1);

   ia2 = ua8;
	if(ia2 == 0x1010)
		printf("(09) ok\n");
	else	printf("(09) ng %x\n",*(int *)&ia2);

   ia4 = ua8;
#if INT64
 	if(ia4 == 0x1010101010101010)
#else
 	if(ia4 == 0x10101010)
#endif
		printf("(10) ok\n");
	else	printf("(10) ng %x\n",*(int *)&ia4);

   ia8 = ua8;
	if(ia8 == 0x1010101010101010LL)
		printf("(11) ok\n");
	else 	printf("(11) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua1 = ua8;
	if(ua1 == 0x10)
		printf("(12) ok\n");
	else	printf("(12) ng %x\n",*(int *)&ua1);

   ua2 = ua8;
	if(ua2 == 0x1010)
		printf("(13) ok\n");
	else	printf("(13) ng %x\n",*(int *)&ua2);

   ua4 = ua8;
#if INT64
	if(ua4 == 0x1010101010101010)
#else
	if(ua4 == 0x10101010)
#endif
		printf("(14) ok\n");
	else	printf("(14) ng %x\n",*(int *)&ua4);

   ia1=0xf1;

   ia8 = ia1;
	if(ia8 == 0xfffffffffffffff1LL)
		printf("(15) ok\n");
	else	printf("(15) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ia1;
	if(ua8 == 0xfffffffffffffff1ULL)
		printf("(16) ok\n");
	else	printf("(16) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ia2=0xf001;

   ia8 = ia2;
	if(ia8 == 0xfffffffffffff001LL)
		printf("(17) ok\n");
	else	printf("(17) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ia2;
	if(ua8 == 0xfffffffffffff001ULL)
		printf("(18) ok\n");
	else	printf("(18) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ia4=0xf0001111;
	
   ia8 = ia4;
#if INT64
	if(ia8 == 0x00000000f0001111LL)			
#else
	if(ia8 == 0xfffffffff0001111LL)			
#endif
		printf("(19) ok\n");
	else	printf("(19) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ia4;
#if INT64
	if(ua8 == 0x00000000f0001111ULL)
#else
	if(ua8 == 0xfffffffff0001111ULL)
#endif
		printf("(20) ok\n");
	else	printf("(20) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua1=0xf1;
	
   ia8 = ua1;
	if(ia8 == 0x00000000000000f1LL)
		printf("(21) ok\n");
	else	printf("(21) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ua1;
	if(ua8 == 0x00000000000000f1ULL)
		printf("(22) ok\n");
	else	printf("(22) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));
   ua2=0xf001;

   ia8 = ua2;
	if(ia8 == 0x000000000000f001LL)
		printf("(23) ok\n");
	else	printf("(23) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));

   ua8 = ua2;
	if(ua8 == 0x000000000000f001ULL)
		printf("(24) ok\n");
	else	printf("(24) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));

   ua4=0xf0001111;

   ia8 = ua4;
	if(ia8 == 0x00000000f0001111LL)
		printf("(25) ok\n");
	else	printf("(25) ng %x %x\n",
				*(int *)&ia8,*(((int *)&ia8)+1));
	
   ua8 = ua4;
	if(ua8 == 0x00000000f0001111ULL)
		printf("(26) ok\n");
	else	printf("(26) ng %x %x\n",
				*(int *)&ua8,*(((int *)&ua8)+1));
 }
   
