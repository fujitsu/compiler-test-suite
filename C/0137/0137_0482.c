#include <stdlib.h>
#include <stdio.h>
#include <math.h>
unsigned long long int sub1(unsigned char u1) {
  unsigned long long int u8;
  u8= u1;
  return(u8);
}
unsigned long long int sub2(unsigned short u2) {
  unsigned long long int u8;
  u8= u2;
  return(u8);
}
unsigned long long int sub3(unsigned long int  u4) {
  unsigned long long int u8;
  u8= u4;
  return(u8);
}
unsigned long long int sub4(signed char i1) {
  unsigned long long int u8;
  u8= i1;
  return(u8);
}
unsigned long long int sub5(signed short i2) {
  unsigned long long int u8;
  u8= i2;
  return(u8);
}
unsigned long long int sub6(signed long int  i4) {
  unsigned long long int u8;
  u8= i4;
  return(u8);
}
unsigned long long int sub7(signed long long int  i8) {
  signed long long int u8;
  u8= i8;
  return(u8);
}
int main( ) {
  char     i1= -1;
  short    i2= -1;
  long int i4= -1;
  long long int i8=-1LL ;
  unsigned char     u1=0xffLL;
  unsigned short    u2=0xffffLL;
  unsigned long int u4=0xffffffffLL;
  unsigned long long int u8;

  unsigned long long int sub1(unsigned char ) ;
  unsigned long long int sub2(unsigned short) ;
  unsigned long long int sub3(unsigned long int ) ;
  unsigned long long int sub4(signed char) ;
  unsigned long long int sub5(signed short) ;
  unsigned long long int sub6(signed long int) ;
  unsigned long long int sub7(signed long long int) ;
  {
  u8=sub1(u1);
               if (u8 == 255LL)  printf("comk2102 (1) ok   \n");
	       else               printf("comk2102 (1) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  u8=sub2(u2);
               if (u8 == 65535LL)  printf("comk2102 (2) ok   \n");
	       else                 printf("comk2102 (2) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  u8=sub3(u4);
               if (u8 == 4294967295LL)  printf("comk2102 (3) ok   \n");
	       else                      printf("comk2102 (3) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  u8=sub4(i1);
               if (u8 == 18446744073709551615LL )
                                printf("comk2102 (4) ok   \n");
	       else             printf("comk2102 (4) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  u8=sub5(i2);
               if (u8 == 18446744073709551615LL )
                                printf("comk2102 (5) ok   \n");
	       else             printf("comk2102 (5) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  u8=sub6(i4);
               if (u8 == 18446744073709551615LL )
                                printf("comk2102 (6) ok   \n");
	       else             printf("comk2102 (6) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  u8=sub6(i8);
               if (u8 == 18446744073709551615LL )
                                printf("comk2102 (7) ok   \n");
	       else             printf("comk2102 (7) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  }
exit (0);
}
