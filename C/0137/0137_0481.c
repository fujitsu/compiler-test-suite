#include <stdlib.h>
#include <stdio.h>
#include <math.h>
long long int sub1(unsigned char u1) {
  long long int i8;
  i8= u1;
  return(i8);
}
long long int sub2(unsigned short u2) {
  long long int i8;
  i8= u2;
  return(i8);
}
long long int sub3(unsigned long int  u4) {
  long long int i8;
  i8= u4;
  return(i8);
}
long long int sub4(unsigned long long int  u8) {
  long long int i8;
  i8= u8;
  return(i8);
}
long long int  sub5(signed char i1) {
  long long int i8;
  i8 = i1;
  return(i8);
}
long long int sub6(signed short i2) {
  long long int i8;
  i8= i2;
  return(i8);
}
long long int sub7(signed long int  i4) {
  long long int i8;
  i8= i4;
  return(i8);
}
int main( ) {
  char     i1= -1;
  short    i2= -1;
  long int i4= -1;
  long long int i8;
  unsigned char     u1=0xffLL;
  unsigned short    u2=0xffffLL;
  unsigned long int u4=0xffffffffLL;
  unsigned long long int u8=0xffffffffffffffffLL;

  signed long long int sub1(unsigned char) ;
  signed long long int sub2(unsigned short) ;
  signed long long int sub3(unsigned long int) ;
  signed long long int sub4(unsigned long long int) ;
  signed long long int sub5(signed char) ;
  signed long long int sub6(signed short) ;
  signed long long int sub7(signed long int) ;
  {
  i8=sub1(u1);
               if (i8 == 255LL)  printf("comk2101 (1) ok   \n");
	       else              printf("comk2101 (1) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub2(u2);
               if (i8 == 65535LL)  printf("comk2101 (2) ok   \n");
	       else                printf("comk2101 (2) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub3(u4);
               if (i8 == 4294967295LL)  printf("comk2101 (3) ok   \n");
	       else                     printf("comk2101 (3) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub4(u8);
               if (i8 == -1LL)  printf("comk2101 (4) ok   \n");
	       else             printf("comk2101 (4) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub5(i1);
               if (i8 == -1LL)  printf("comk2101 (5) ok   \n");
	       else             printf("comk2101 (5) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub6(i2);
               if (i8 == -1LL)  printf("comk2101 (6) ok   \n");
	       else             printf("comk2101 (6) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub7(i4);
               if (i8 == -1LL)  printf("comk2101 (7) ok   \n");
	       else             printf("comk2101 (7) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  }
exit (0);
}
