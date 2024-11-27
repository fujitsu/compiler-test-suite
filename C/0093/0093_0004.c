#include <stdio.h>

long long int ea1,ea11;
unsigned long long int uea1,uea11;
long long int ea2[10];
unsigned long long int uea2[10];
struct ea {
	  long long int ea;
	  long long int eb;
	 } ea3;
struct eb {
	  long long int ea;
	  long long int eb;
	 } ea4[10];

struct uea {
	  unsigned long long int ea;
	  unsigned long long int eb;
	 } uea3;
struct ueb {
	  unsigned long long int ea;
	  unsigned long long int eb;
	 } uea4[10];
int main()
 {
   long long int ia1,ia11;
   unsigned long long int uia1,uia11;
   long long int ia2[10];
   unsigned long long int uia2[10];
   struct a {
	     long long int ia;
	     long long int ib;
	     char w[5000];
	     long long int iaa;
	     long long int ibb;
	    } ia3;
   struct b {
	     long long int ia;
	     long long int ib;
	    } ia4[10];
   struct ua {
	     unsigned long long int ia;
	     unsigned long long int ib;
 	     char w[5000];
	     unsigned long long int iaa;
	     unsigned long long int ibb;
	    } uia3;
   struct ub {
	     unsigned long long int ia;
	     unsigned long long int ib;
	    } uia4[10];

   static long long int sa1,sa11;
   static unsigned long long int usa1,usa11;
   static long long int sa2[10];
   static unsigned long long int usa2[10];
   static struct sa {
		     long long int sa;
		     long long int sb;
		   } sa3;
   static struct sb {
		     long long int sa;
		     long long int sb;
		   } sa4[10];
   static struct usa {
		     unsigned long long int sa;
		     unsigned long long int sb;
		   } usa3;
   static struct usb {
		     unsigned long long int sa;
		     unsigned long long int sb;
		   } usa4[10];

        
 	ea1 = 0x0000111100001111LL;
 	   if(ea1 == 0x0000111100001111LL) 
			printf("(01) ok\n");
	   else		printf("(01) ng\n");

 	ea11 = ea1;
 	   if(ea11 == 0x0000111100001111LL) 
			printf("(02) ok\n");
	   else		printf("(02) ng\n");

	ea2[0] = 0x1111000011110000LL;
	   if(ea2[0] == 0x1111000011110000LL) 
			printf("(03) ok\n");
	   else 	printf("(03) ng\n");

	ea2[1] = ea2[0];
	   if(ea2[1] == 0x1111000011110000LL) 
			printf("(04) ok\n");
	   else 	printf("(04) ng\n");

 	ea3.ea = 0x0000ffffffff0000LL;
	   if(ea3.ea == 0x0000ffffffff0000LL)
			printf("(05) ok\n");
	   else		printf("(05) ng\n");

 	ea3.eb = ea3.ea;
	   if(ea3.eb == 0x0000ffffffff0000LL)
			printf("(06) ok\n");
	   else		printf("(06) ng\n");

	ea4[1].ea = 0xffffffff00000001LL;
	   if(ea4[1].ea == 0xffffffff00000001LL)
			printf("(07) ok\n");
	   else 	printf("(07) ng\n");

	ea4[1].eb = ea4[1].ea;
	   if(ea4[1].eb == 0xffffffff00000001LL)
			printf("(08) ok\n");
	   else 	printf("(08) ng\n");

	uea1 = 0x0000111100001111ULL;
	   if(uea1 == 0x0000111100001111ULL)
			printf("(09) ok\n");
	   else		printf("(09) ng\n");

	uea11 = uea1;
	   if(uea11 == 0x0000111100001111ULL)
			printf("(10) ok\n");
	   else		printf("(10) ng\n");

	uea2[2] = 0x1111000011110000ULL;
	   if(uea2[2] == 0x1111000011110000ULL)
			printf("(11) ok\n");
	   else		printf("(11) ng\n");

	uea2[3] = uea2[2];
	   if(uea2[3] == 0x1111000011110000ULL)
			printf("(12) ok\n");
	   else		printf("(12) ng\n");

	uea3.ea = 0x0000ffffffff0000ULL;
	   if(uea3.ea == 0x0000ffffffff0000ULL)
			printf("(13) ok\n");
	   else 	printf("(13) ng\n");
	
	uea3.eb = uea3.ea;
	   if(uea3.eb == 0x0000ffffffff0000ULL)
			printf("(14) ok\n");
	   else 	printf("(14) ng\n");
	
	uea4[3].ea = 0xffffffff00000000ULL;
	   if(uea4[3].ea == 0xffffffff00000000ULL)
			printf("(15) ok\n");
	   else 	printf("(15) ng\n");

	uea4[3].eb = uea4[3].ea;
	   if(uea4[3].eb == 0xffffffff00000000ULL)
			printf("(16) ok\n");
	   else 	printf("(16) ng\n");

        
	ia1 = 0x0000111100001111LL;
	   if(ia1 == 0x0000111100001111LL)
			printf("(17) ok\n");
	   else 	printf("(17) ng\n");

	ia11 = ia1;
	   if(ia11 == 0x0000111100001111LL)
			printf("(18) ok\n");
	   else 	printf("(18) ng\n");

	ia2[4] = 0x1111000011110000LL;
	   if(ia2[4] == 0x1111000011110000LL)
			printf("(19) ok\n");
	   else		printf("(19) ng\n");

	ia2[5] = ia2[4];
	   if(ia2[5] == 0x1111000011110000LL)
			printf("(20) ok\n");
	   else		printf("(20) ng\n");

	ia3.ia = 0x0000ffffffff0000LL;
	   if(ia3.ia == 0x0000ffffffff0000LL)
			printf("(21-1) ok\n");
	   else 	printf("(21-1) ng\n");
	
	ia3.iaa = 0x0000ffffffff0000LL;
	   if(ia3.iaa == 0x0000ffffffff0000LL)
			printf("(21-2) ok\n");
	   else 	printf("(21-2) ng\n");
	
	ia3.ib = ia3.ia;
	   if(ia3.ib == 0x0000ffffffff0000LL)
			printf("(22) ok\n");
	   else 	printf("(22) ng\n");
	
	ia3.ibb = ia3.iaa;
	   if(ia3.ibb == 0x0000ffffffff0000LL)
			printf("(22) ok\n");
	   else 	printf("(22) ng\n");
	
	ia4[5].ia = 0xffffffff00000000LL;
	   if(ia4[5].ia == 0xffffffff00000000LL)
			printf("(23) ok\n");
	   else 	printf("(23) ng\n");

	ia4[5].ib = ia4[5].ia;
	   if(ia4[5].ib == 0xffffffff00000000LL)
			printf("(24) ok\n");
	   else 	printf("(24) ng\n");

	uia1 = 0x0000111100001111ULL;
	   if(uia1 == 0x0000111100001111ULL)
			printf("(25) ok\n");
	   else 	printf("(25) ng\n");

	uia11 = uia1;
	   if(uia11 == 0x0000111100001111ULL)
			printf("(26) ok\n");
	   else 	printf("(26) ng\n");

	uia2[6] = 0x1111000011110000ULL;
	   if(uia2[6] == 0x1111000011110000ULL)
			printf("(27) ok\n");
	   else 	printf("(27) ng\n");
	
	uia2[7] = uia2[6];
	   if(uia2[7] == 0x1111000011110000ULL)
			printf("(28) ok\n");
	   else 	printf("(28) ng\n");
	
	uia3.ia = 0x0000ffffffff0000ULL;
	   if(uia3.ia == 0x0000ffffffff0000ULL)
			printf("(29) ok\n");
	   else 	printf("(29) ng\n");

	uia3.iaa = 0x0000ffffffff0000ULL;
	   if(uia3.iaa == 0x0000ffffffff0000ULL)
			printf("(29) ok\n");
	   else 	printf("(29) ng\n");

	uia3.ib = uia3.ia;
	   if(uia3.ib == 0x0000ffffffff0000ULL)
			printf("(30-1) ok\n");
	   else 	printf("(30-1) ng\n");

	uia3.ibb = uia3.iaa;
	   if(uia3.ibb == 0x0000ffffffff0000ULL)
			printf("(30-2) ok\n");
	   else 	printf("(30-2) ng\n");

	uia4[7].ia = 0xffffffff00000000ULL;
	   if(uia4[7].ia ==0xffffffff00000000ULL)	
			printf("(31) ok\n");
	   else 	printf("(31) ng\n");

	uia4[7].ib = uia4[7].ia;
	   if(uia4[7].ib ==0xffffffff00000000ULL)	
			printf("(32) ok\n");
	   else 	printf("(32) ng\n");

        
	sa1 = 0x0000111100001111LL;
	   if(sa1 == 0x0000111100001111LL)
			printf("(33) ok\n");
	   else 	printf("(33) ng\n");

	sa11 = sa1;
	   if(sa11 == 0x0000111100001111LL)
			printf("(34) ok\n");
	   else 	printf("(34) ng\n");

	sa2[8] = 0x1111000011110000LL;
	   if(sa2[8] == 0x1111000011110000LL)
			printf("(35) ok\n");
	   else 	printf("(35) ng\n");

	sa2[9] = sa2[8];
	   if(sa2[9] == 0x1111000011110000LL)
			printf("(36) ok\n");
	   else 	printf("(36) ng\n");

	sa3.sa = 0x0000ffffffff0000LL;
	   if(sa3.sa == 0x0000ffffffff0000LL)
			printf("(37) ok\n");
	   else 	printf("(37) ng\n");

	sa3.sb = sa3.sa;
	   if(sa3.sb == 0x0000ffffffff0000LL)
			printf("(38) ok\n");
	   else 	printf("(38) ng\n");

	sa4[9].sa = 0xffffffff00000000LL;
	   if(sa4[9].sa == 0xffffffff00000000LL)
			printf("(39) ok\n");
	   else 	printf("(39) ng\n");

	sa4[9].sb = sa4[9].sa;
	   if(sa4[9].sb == 0xffffffff00000000LL)
			printf("(40) ok\n");
	   else 	printf("(40) ng\n");

	usa1 = 0x0000111100001111ULL;
	   if(usa1 == 0x0000111100001111ULL)
			printf("(41) ok\n");
	   else 	printf("(41) ng\n");

	usa11 = usa1;
	   if(usa11 == 0x0000111100001111ULL)
			printf("(42) ok\n");
	   else 	printf("(42) ng\n");

	usa2[0] = 0x1111000011110000ULL;
	   if(usa2[0] == 0x1111000011110000ULL)
			printf("(43) ok\n");
	   else 	printf("(43) ng\n");

	usa2[1] = usa2[0];
	   if(usa2[1] == 0x1111000011110000ULL)
			printf("(44) ok\n");
	   else 	printf("(44) ng\n");

	usa3.sa = 0x0000ffffffff0000ULL;
	   if(usa3.sa == 0x0000ffffffff0000ULL)
			printf("(45) ok\n");
	   else 	printf("(45) ng\n");

	usa3.sb = usa3.sa;
	   if(usa3.sb == 0x0000ffffffff0000ULL)
			printf("(46) ok\n");
	   else 	printf("(46) ng\n");

	usa4[1].sa = 0xffffffff00000000ULL;
	   if(usa4[1].sa == 0xffffffff00000000ULL)
			printf("(47) ok\n");
	   else 	printf("(47) ng\n");
	
	usa4[1].sb = usa4[1].sa;
	   if(usa4[1].sb == 0xffffffff00000000ULL)
			printf("(48) ok\n");
	   else 	printf("(48) ng\n");
	
 }
