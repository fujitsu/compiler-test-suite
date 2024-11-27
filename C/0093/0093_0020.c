#include <stdio.h>
signed char sub1(signed long long int  i8) {
  signed char i1;
  i1= i8;
  return(i1);
}
signed short sub2(signed long long int  i8) {
  signed short i2;
  i2= i8;
  return(i2);
}
signed long int sub3(signed long long int  i8) {
  signed long int i4;
  i4= i8;
  return(i4);
}
unsigned char sub4(signed long long int  i8) {
  unsigned char u1;
  u1= i8;
  return(u1);
}
unsigned short sub5(signed long long int  i8) {
  unsigned short u2;
  u2= i8;
  return(u2);
}
unsigned long int sub6(signed long long int  i8) {
  unsigned long int u4;
  u4= i8;
  return(u4);
}
unsigned long long int sub7(signed long long int  i8) {
  signed long long int u8;
  u8= i8;
  return(u8);
}
int main( ) {
  char     i1;
  short    i2;
  long int i4;
  long long int i8=-1LL;
  unsigned char     u1;
  unsigned short    u2;
  unsigned long int u4;
  unsigned long long int u8;
  signed char            sub1(signed long long int) ;
  signed short           sub2(signed long long int) ;
  signed long int        sub3(signed long long int) ;
  unsigned char          sub4(signed long long int) ;
  unsigned short         sub5(signed long long int) ;
  unsigned long int      sub6(signed long long int) ;
  unsigned long long int sub7(signed long long int) ;

  {
  i1=sub1(i8);
               if (i1 == -1LL)  printf(" (1) ok   \n",i1);
               else             printf(" (1) ng %d\n",i1);
  i2=sub2(i8);
               if (i2 == -1LL)  printf(" (2) ok   \n",i2);
               else             printf(" (2) ng %d\n",i2);
  i4=sub3(i8);
               if (i4 == -1LL)  printf(" (3) ok   \n",i4);
               else             printf(" (3) ng %d\n",i4);
  u1=sub4(i8);
               if (u1 == 255)   printf(" (5) ok   \n",u1);
               else             printf(" (5) ng %d\n",u1);
  u2=sub5(i8);
               if (u2 == 65535) printf(" (6) ok   \n",u2);
               else             printf(" (6) ng %d\n",u2);
  u4=sub6(i8);
#if INT64 | LONG64 || __x86_64__ || __aarch64__ || _LP64
               if (u4 == 18446744073709551615UL)  printf(" (7) ok   \n",u4);
#else
               if (u4 == 4294967295)  printf(" (7) ok   \n",u4);
#endif
               else                   printf(" (7) ng %d\n",u4);
  u8=sub7(i8);
               if (u8 == 18446744073709551615ULL)
                                printf(" (8) ok   \n",u8);
	       else             printf(" (8) ng %x %x\n"
                                              ,*(int *)&u8,*(((int *)&u8)+1));
  }
}
