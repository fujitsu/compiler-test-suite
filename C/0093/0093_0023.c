#include <stdio.h>
signed char sub1(unsigned long long int  u8) {
  signed char i1;
  i1= u8;
  return(i1);
}
signed short sub2(unsigned long long int  u8) {
  signed short i2;
  i2= u8;
  return(i2);
}
signed long int sub3(unsigned long long int  u8) {
  signed long int i4;
  i4= u8;
  return(i4);
}
signed long long int sub4(unsigned long long int  u8) {
  signed long long int i8;
  i8= u8;
  return(i8);
}
unsigned char sub5(unsigned long long int  u8) {
  unsigned char u1;
  u1= u8;
  return(u1);
}
unsigned short sub6(unsigned long long int  u8) {
  unsigned short u2;
  u2= u8;
  return(u2);
}
unsigned long int sub7(unsigned long long int  u8) {
  unsigned long int u4;
  u4= u8;
  return(u4);
}
int main( ) {
  static char     i1;
  static short    i2;
  static long int i4;
  static long long int i8;
  static unsigned char     u1;
  static unsigned short    u2;
  static unsigned long int u4;
  static unsigned long long int u8=0xffffffffffffffffULL;

  signed char          sub1(unsigned long long int) ;
  signed short         sub2(unsigned long long int) ;
  signed long int      sub3(unsigned long long int) ;
  signed long long int sub4(unsigned long long int) ;
  unsigned char        sub5(unsigned long long int) ;
  unsigned short       sub6(unsigned long long int) ;
  unsigned long int    sub7(unsigned long long int) ;

  {
  i1=sub1(u8);
               if (i1 == -1LL)  printf(" (1) ok   \n",i1);
               else             printf(" (1) ng %d\n",i1);
  i2=sub2(u8);
               if (i2 == -1LL)  printf(" (2) ok   \n",i2);
               else             printf(" (2) ng %d\n",i2);
  i4=sub3(u8);
               if (i4 == -1LL)  printf(" (3) ok   \n",i4);
               else             printf(" (3) ng %d\n",i4);
  i8=sub4(u8);
               if (i8 == -1LL)  printf(" (4) ok   \n",i8);
	       else             printf(" (4) ng %x %x\n"
                                              ,*(int *)&i8,*(((int *)&i8)+1));
  u1=sub5(u8);
               if (u1 == 255)   printf(" (5) ok   \n",u1);
               else             printf(" (5) ng %d\n",u1);
  u2=sub6(u8);
               if (u2 == 65535) printf(" (6) ok   \n",u2);
               else             printf(" (6) ng %d\n",u2);
  u4=sub7(u8);
#if INT64 | LONG64 || __x86_64__ || __aarch64__ || _LP64
               if (u4 == 18446744073709551615UL)  printf(" (7) ok   \n",u4);
#else
               if (u4 == 4294967295)  printf(" (7) ok   \n",u4);
#endif
               else                   printf(" (7) ng %d\n",u4);
  }
}
