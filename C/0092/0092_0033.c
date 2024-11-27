#include <stdio.h>
short          sub02(signed char i1) {short i2;          i2=i1; return(i2);}
int            sub03(signed char i1) {int   i4;          i4=i1; return(i4);}
unsigned char  sub01(signed char i1) {unsigned char  u1; u1=i1; return(u1);}
unsigned short sub04(signed char i1) {unsigned short u2; u2=i1; return(u2);}
unsigned int   sub05(signed char i1) {unsigned int   u4; u4=i1; return(u4);}

char           sub06(signed short i2){char  i1;          i1=i2; return(i1);}
int            sub08(signed short i2){int   i4;          i4=i2; return(i4);}
unsigned char  sub09(signed short i2){unsigned char  u1; u1=i2; return(u1);}
unsigned short sub07(signed short i2){unsigned short u2; u2=i2; return(u2);}
unsigned int   sub10(signed short i2){unsigned int   u4; u4=i2; return(u4);}

char           sub11(signed int   i4){char  i1;          i1=i4; return(i1);}
short          sub12(signed int   i4){short i2;          i2=i4; return(i2);}
unsigned char  sub14(signed int   i4){unsigned char  u1; u1=i4; return(u1);}
unsigned short sub15(signed int   i4){unsigned short u2; u2=i4; return(u2);}
unsigned int   sub13(signed int   i4){unsigned int   u4; u4=i4; return(u4);}
int main( ) {
  short          sub02(signed char);
  int            sub03(signed char);
  unsigned char  sub01(signed char);
  unsigned short sub04(signed char);
  unsigned int   sub05(signed char);
  char           sub06(signed short);
  int            sub08(signed short);
  unsigned char  sub09(signed short);
  unsigned short sub07(signed short);
  unsigned int   sub10(signed short);
  char           sub11(signed int  );
  short          sub12(signed int  );
  unsigned char  sub14(signed int  );
  unsigned short sub15(signed int  );
  unsigned int   sub13(signed int  );
  char     i1;
  short    i2;
  long int i4;
  unsigned char     u1;
  unsigned short    u2;
  unsigned long int u4;
  
  i1 = -1;
  i2=sub02(i1);
  if (i2 ==  -1)  printf(" (2) ok   \n");
  else            printf(" (2) ng %d\n",i2);
  i4=sub03(i1);
  if (i4 ==  -1)  printf(" (3) ok   \n");
  else            printf(" (3) ng %d\n",i4);
  u1=sub01(i1);
  if (u1 == 255UL)  printf(" (1) ok   \n");
  else              printf(" (1) ng %d\n",i1);
  u2=sub04(i1);
  if (u2 == 65535UL)  printf(" (4) ok   \n");
  else                printf(" (4) ng %d\n",u2);
  u4=sub05(i1);
  i2 = -1;
  i1=sub06(i2);
  if (i1 == -1)   printf(" (5) ok   \n");
  else            printf(" (5) ng %d\n",i1);
  i4=sub08(i2);
  if (i4 == -1)   printf(" (7) ok   \n");
  else            printf(" (7) ng %d\n",i4);
  u1=sub09(i2);
  if (u1 == 255UL)  printf(" (8) ok   \n");
  else            printf(" (8) ng %d\n",u1);
  u2=sub07(i2);
  if (u2 == 65535UL)printf(" (6) ok   \n");
  else              printf(" (6) ng %d\n",u2);
  u4=sub10(i2);
  i4 = -1;
  i1=sub11(i4);
  if (i1 == -1)   printf(" (9) ok   \n");
  else            printf(" (9) ng %d\n",i1);
  i2=sub12(i4);
  if (i2 ==  -1)  printf(" (10) ok   \n");
  else            printf(" (10) ng %d\n",i2);
  u1=sub14(i4);
  if (u1 == 255UL)  printf(" (11) ok   \n");
  else              printf(" (11) ng %d\n",u1);
  u2=sub15(i4);
  if (u2 == 65535UL)printf(" (12) ok   \n");
  else              printf(" (12) ng %d\n",u2);
  u4=sub13(i4);
}
