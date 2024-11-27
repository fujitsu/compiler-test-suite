#include <stdio.h>

int main()
 {
      signed long long int a,b;
    unsigned long long int c,d;

	a = 0x0000000100000001LL;
	b = 0x0000000000000010LL;

	if(a == b) printf("(01) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("(01) ok\n");

	if(a != b) printf("(02) ok\n");
	else 	   printf("(02) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a > b)  printf("(03) ok\n");
	else 	   printf("(03) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a >= b) printf("(04) ok\n");
	else 	   printf("(04) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a < b)  printf("(05) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("(05) ok\n");

	if(a <= b) printf("(06) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("(06) ok\n");

	if(a == 0x0000000000000010LL) 
		   printf("(07) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("(07) ok\n");

	if(a != 0x0000000000000010LL) 
 		   printf("(08) ok\n");
	else 	   printf("(08) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a > 0x0000000000000010LL)  
	       	   printf("(09) ok\n");
	else 	   printf("(09) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a >= 0x0000000000000010LL) 
		   printf("(10) ok\n");
	else 	   printf("(10) ng %x %x\n",*(int *)&a,*(int *)&b);

	if(a < 0x0000000000000010LL)  
		   printf("(11) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("(11) ok\n");

	if(a <= 0x0000000000000010LL) 
		   printf("(12) ng %x %x\n",*(int *)&a,*(int *)&b);
	else	   printf("(12) ok\n");


	a = 0x0000010100000001LL;
 	b = 0x0000010100000001LL;

	if(a != b) printf("(13) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(13) ok\n");

	if(a == b) printf("(14) ok\n");
	else	   printf("(14) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > b)  printf("(15) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(15) ok\n");

	if(a < b)  printf("(16) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(16) ok\n");

	if(a <= b) printf("(17) ok\n");
	else	   printf("(17) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= b) printf("(18) ok\n");
	else	   printf("(18) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a != 0x0000010100000001LL) 
		   printf("(19) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(19) ok\n");

	if(a == 0x0000010100000001LL) 
 		   printf("(20) ok\n");
	else	   printf("(20) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > 0x0000010100000001LL)  
		   printf("(21) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(21) ok\n");

	if(a < 0x0000010100000001LL) 
		   printf("(22) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(22) ok\n");

	if(a >= 0x0000010100000001LL)  
		   printf("(23) ok\n");
	else	   printf("(23) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= 0x0000010100000001LL) 
		   printf("(24) ok\n");
	else	   printf("(24) ng u=%x l=%x\n\t\t u=%x l=%x\n",
	 			*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));


	a = 0x0000111100000001LL;
	b = 0x0000111100001111LL;

	if(a == b) printf("(25) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(25) ok\n");

	if(a != b) printf("(26) ok\n");
	else 	   printf("(26) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < b)  printf("(27) ok\n");
	else 	   printf("(27) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= b) printf("(28) ok\n");
	else 	   printf("(28) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > b)  printf("(29) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(29) ok\n");

	if(a >= b) printf("(30) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(30) ok\n");

	if(a == 0x0000111100001111LL) 
		   printf("(31) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(31) ok\n");

	if(a != 0x0000111100001111LL) 
		   printf("(32) ok\n");
	else 	   printf("(32) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < 0x0000111100001111LL)  
		   printf("(33) ok\n");
	else 	   printf("(33) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a <= 0x0000111100001111LL) 
		   printf("(34) ok\n");
	else 	   printf("(34) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > 0x0000111100001111LL)  
		   printf("(35) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(35) ok\n");

	if(a >= 0x0000111100001111LL) 
		   printf("(36) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(36) ok\n");


	a = 0x0000101000001111LL;
	b = 0x0000101000000001LL;

	if(a == b) printf("(37) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(37) ok\n");

	if(a != b) printf("(38) ok\n");
	else 	   printf("(38) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > b)  printf("(39) ok\n");
	else 	   printf("(39) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a >= b) printf("(40) ok\n");
	else 	   printf("(40) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < b)  printf("(41) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(41) ok\n");

	if(a <= b) printf("(42) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(42) ok\n");

	if(a == 0x0000101000000001LL) 
		   printf("(43) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(43) ok\n");

	if(a != 0x0000101000000001LL) 
		   printf("(44) ok\n");
	else 	   printf("(44) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a > 0x0000101000000001LL)  
		   printf("(45) ok\n");
	else 	   printf("(45) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a >= 0x0000101000000001LL) 
		   printf("(46) ok\n");
	else 	   printf("(46) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));

	if(a < 0x0000101000000001LL)  
		   printf("(47) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(47) ok\n");

	if(a <= 0x0000101000000001LL) 
		   printf("(48) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&a,*(((int *)&a)+1),
				*(int *)&b,*(((int *)&b)+1));
	else	   printf("(48) ok\n");

	c = 0x11110000ffff0000ULL;
	d = 0x101100000000ffffULL;

	if(c == d) printf("(49) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("(49) ok\n");

	if(c != d) printf("(50) ok\n");
	else       printf("(50) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c > d)  printf("(51) ok\n");
	else       printf("(51) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c >= d) printf("(52) ok\n");
	else       printf("(52) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c < d)  printf("(53) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("(53) ok\n");

	if(c <= d) printf("(54) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("(54) ok\n");

	if(c == 0x101100000000ffffULL) 
		   printf("(55) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("(55) ok\n");

	if(c != 0x101100000000ffffULL) 
		   printf("(56) ok\n");
	else       printf("(56) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c > 0x101100000000ffffULL)  
		   printf("(57) ok\n");
	else       printf("(57) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c >= 0x101100000000ffffULL) 
		   printf("(58) ok\n");
	else       printf("(58) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));

	if(c < 0x101100000000ffffULL)  
		   printf("(59) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("(59) ok\n");

	if(c <= 0x101100000000ffffULL) 
		   printf("(60) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else 	   printf("(60) ok\n");


	c = 0xffffffff00000000ULL;
	d = 0xffffffff00000000ULL;

	if(c == d) printf("(61) ok\n");
	else	   printf("(61) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c != d) printf("(62) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("(62) ok\n");

	if(c > d)  printf("(63) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("(63) ok\n");

	if(c >= d) printf("(64) ok\n");
	else	   printf("(64) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c < d)  printf("(65) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("(65) ok\n");

	if(c <= d) printf("(66) ok\n");
	else	   printf("(66) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c == 0xffffffff00000000ULL) 
		   printf("(67) ok\n");
	else	   printf("(67) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c != 0xffffffff00000000ULL) 
		   printf("(68) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("(68) ok\n");

	if(c > 0xffffffff00000000ULL)  
		   printf("(69) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("(69) ok\n");

	if(c >= 0xffffffff00000000ULL) 
		   printf("(70) ok\n");
	else	   printf("(70) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

	if(c < 0xffffffff00000000ULL)  
		   printf("(71) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
				*(int *)&d,*(((int *)&d)+1));
	else	   printf("(71) ok\n");

	if(c <= 0xffffffff00000000ULL) 
		   printf("(72) ok\n");
	else	   printf("(72) ng u=%x l=%x\n\t\t u=%x l=%x\n",
				*(int *)&c,*(((int *)&c)+1),
  				*(int *)&d,*(((int *)&d)+1));

 }
