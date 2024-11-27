#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
 {
      signed long long int a,b;
    unsigned long long int c,d;

	a = 0x0000000100000001LL;
	b = 0x0000000000000010LL;

	if(a == b) printf("comk2007-(01) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("comk2007-(01) ok\n");

	if(a != b) printf("comk2007-(02) ok\n");
	else 	   printf("comk2007-(02) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a > b)  printf("comk2007-(03) ok\n");
	else 	   printf("comk2007-(03) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a >= b) printf("comk2007-(04) ok\n");
	else 	   printf("comk2007-(04) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a < b)  printf("comk2007-(05) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("comk2007-(05) ok\n");

	if(a <= b) printf("comk2007-(06) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("comk2007-(06) ok\n");

	if(a == 0x0000000000000010LL) 
		   printf("comk2007-(07) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("comk2007-(07) ok\n");

	if(a != 0x0000000000000010LL) 
 		   printf("comk2007-(08) ok\n");
	else 	   printf("comk2007-(08) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a > 0x0000000000000010LL)  
	       	   printf("comk2007-(09) ok\n");
	else 	   printf("comk2007-(09) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a >= 0x0000000000000010LL) 
		   printf("comk2007-(10) ok\n");
	else 	   printf("comk2007-(10) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a < 0x0000000000000010LL)  
		   printf("comk2007-(11) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("comk2007-(11) ok\n");

	if(a <= 0x0000000000000010LL) 
		   printf("comk2007-(12) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("comk2007-(12) ok\n");

	a = 0x0000010100000001LL;
 	b = 0x0000010100000001LL;

	if(a != b) printf("comk2007-(13) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(13) ok\n");

	if(a == b) printf("comk2007-(14) ok\n");
	else	   printf("comk2007-(14) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > b)  printf("comk2007-(15) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(15) ok\n");

	if(a < b)  printf("comk2007-(16) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(16) ok\n");

	if(a <= b) printf("comk2007-(17) ok\n");
	else	   printf("comk2007-(17) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= b) printf("comk2007-(18) ok\n");
	else	   printf("comk2007-(18) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a != 0x0000010100000001LL) 
		   printf("comk2007-(19) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(19) ok\n");

	if(a == 0x0000010100000001LL) 
 		   printf("comk2007-(20) ok\n");
	else	   printf("comk2007-(20) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > 0x0000010100000001LL)  
		   printf("comk2007-(21) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(21) ok\n");

	if(a < 0x0000010100000001LL) 
		   printf("comk2007-(22) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(22) ok\n");

	if(a >= 0x0000010100000001LL)  
		   printf("comk2007-(23) ok\n");
	else	   printf("comk2007-(23) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= 0x0000010100000001LL) 
		   printf("comk2007-(24) ok\n");
	else	   printf("comk2007-(24) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	a = 0x0000111100000001LL;
	b = 0x0000111100001111LL;

	if(a == b) printf("comk2007-(25) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(25) ok\n");

	if(a != b) printf("comk2007-(26) ok\n");
	else 	   printf("comk2007-(26) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < b)  printf("comk2007-(27) ok\n");
	else 	   printf("comk2007-(27) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= b) printf("comk2007-(28) ok\n");
	else 	   printf("comk2007-(28) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > b)  printf("comk2007-(29) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(29) ok\n");

	if(a >= b) printf("comk2007-(30) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(30) ok\n");

	if(a == 0x0000111100001111LL) 
		   printf("comk2007-(31) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(31) ok\n");

	if(a != 0x0000111100001111LL) 
		   printf("comk2007-(32) ok\n");
	else 	   printf("comk2007-(32) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < 0x0000111100001111LL)  
		   printf("comk2007-(33) ok\n");
	else 	   printf("comk2007-(33) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= 0x0000111100001111LL) 
		   printf("comk2007-(34) ok\n");
	else 	   printf("comk2007-(34) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > 0x0000111100001111LL)  
		   printf("comk2007-(35) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(35) ok\n");

	if(a >= 0x0000111100001111LL) 
		   printf("comk2007-(36) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(36) ok\n");

	a = 0x0000101000001111LL;
	b = 0x0000101000000001LL;

	if(a == b) printf("comk2007-(37) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(37) ok\n");

	if(a != b) printf("comk2007-(38) ok\n");
	else 	   printf("comk2007-(38) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > b)  printf("comk2007-(39) ok\n");
	else 	   printf("comk2007-(39) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a >= b) printf("comk2007-(40) ok\n");
	else 	   printf("comk2007-(40) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < b)  printf("comk2007-(41) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(41) ok\n");

	if(a <= b) printf("comk2007-(42) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(42) ok\n");

	if(a == 0x0000101000000001LL) 
		   printf("comk2007-(43) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(43) ok\n");

	if(a != 0x0000101000000001LL) 
		   printf("comk2007-(44) ok\n");
	else 	   printf("comk2007-(44) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > 0x0000101000000001LL)  
		   printf("comk2007-(45) ok\n");
	else 	   printf("comk2007-(45) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a >= 0x0000101000000001LL) 
		   printf("comk2007-(46) ok\n");
	else 	   printf("comk2007-(46) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < 0x0000101000000001LL)  
		   printf("comk2007-(47) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(47) ok\n");

	if(a <= 0x0000101000000001LL) 
		   printf("comk2007-(48) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("comk2007-(48) ok\n");


	c = 0x11110000ffff0000LL;
	d = 0x101100000000ffffLL;

	if(c == d) printf("comk2007-(49) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("comk2007-(49) ok\n");

	if(c != d) printf("comk2007-(50) ok\n");
	else       printf("comk2007-(50) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c > d)  printf("comk2007-(51) ok\n");
	else       printf("comk2007-(51) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c >= d) printf("comk2007-(52) ok\n");
	else       printf("comk2007-(52) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c < d)  printf("comk2007-(53) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("comk2007-(53) ok\n");

	if(c <= d) printf("comk2007-(54) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("comk2007-(54) ok\n");

	if(c == 0x101100000000ffffLL) 
		   printf("comk2007-(55) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("comk2007-(55) ok\n");

	if(c != 0x101100000000ffffLL) 
		   printf("comk2007-(56) ok\n");
	else       printf("comk2007-(56) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c > 0x101100000000ffffLL)  
		   printf("comk2007-(57) ok\n");
	else       printf("comk2007-(57) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c >= 0x101100000000ffffLL) 
		   printf("comk2007-(58) ok\n");
	else       printf("comk2007-(58) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c < 0x101100000000ffffLL)  
		   printf("comk2007-(59) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("comk2007-(59) ok\n");

	if(c <= 0x101100000000ffffLL) 
		   printf("comk2007-(60) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("comk2007-(60) ok\n");

	c = 0xffffffff00000000LL;
	d = 0xffffffff00000000LL;

	if(c == d) printf("comk2007-(61) ok\n");
	else	   printf("comk2007-(61) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c != d) printf("comk2007-(62) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("comk2007-(62) ok\n");

	if(c > d)  printf("comk2007-(63) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("comk2007-(63) ok\n");

	if(c >= d) printf("comk2007-(64) ok\n");
	else	   printf("comk2007-(64) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c < d)  printf("comk2007-(65) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("comk2007-(65) ok\n");

	if(c <= d) printf("comk2007-(66) ok\n");
	else	   printf("comk2007-(66) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c == 0xffffffff00000000LL) 
		   printf("comk2007-(67) ok\n");
	else	   printf("comk2007-(67) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c != 0xffffffff00000000LL) 
		   printf("comk2007-(68) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("comk2007-(68) ok\n");

	if(c > 0xffffffff00000000LL)  
		   printf("comk2007-(69) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("comk2007-(69) ok\n");

	if(c >= 0xffffffff00000000LL) 
		   printf("comk2007-(70) ok\n");
	else	   printf("comk2007-(70) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c < 0xffffffff00000000LL)  
		   printf("comk2007-(71) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("comk2007-(71) ok\n");

	if(c <= 0xffffffff00000000LL) 
		   printf("comk2007-(72) ok\n");
	else	   printf("comk2007-(72) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

exit (0);
 }
