#include <stdio.h>
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
  static char     i1= -1;
  static short    i2= -1;
  static long int i4= -1;
  static long long int i8;
  static unsigned char     u1=0xffUL;
  static unsigned short    u2=0xffffUL;
  static unsigned long int u4=0xffffffffUL;
  static unsigned long long int u8=0xffffffffffffffffULL;

  signed long long int sub1(unsigned char) ;
  signed long long int sub2(unsigned short) ;
  signed long long int sub3(unsigned long int) ;
  signed long long int sub4(unsigned long long int) ;
  signed long long int sub5(signed char) ;
  signed long long int sub6(signed short) ;
  signed long long int sub7(signed long int) ;
  {
  i8=sub1(u1);
               if (i8 == 255LL)  printf(" (1) ok   \n");
	       else              printf(" (1) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub2(u2);
               if (i8 == 65535LL)  printf(" (2) ok   \n");
	       else                printf(" (2) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub3(u4);
               if (i8 == 4294967295LL)  printf(" (3) ok   \n");
	       else                     printf(" (3) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub4(u8);
               if (i8 == -1LL)  printf(" (4) ok   \n");
	       else             printf(" (4) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub5(i1);
               if (i8 == -1LL)  printf(" (5) ok   \n");
	       else             printf(" (5) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub6(i2);
               if (i8 == -1LL)  printf(" (6) ok   \n");
	       else             printf(" (6) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  i8=sub7(i4);
               if (i8 == -1LL)  printf(" (7) ok   \n");
	       else             printf(" (7) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  }
}
