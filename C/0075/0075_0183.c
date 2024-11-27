#include <stdio.h>
signed char sub1_aux( unsigned char u1 ){
  char i1;

  if( u1 == 0xff ){
    u1 = 0xff;
  }
  else {
    u1 = 55;
  }
  i1 = u1;
  return i1;
}
short int sub2( unsigned char u1) {
  short int i2;

  if( u1 == 0xff ){
    u1 = 0xff;
  }
  else {
    u1 = 55;
  }
  i2=u1;  
  return(i2);
}
int sub3( unsigned char u1) {
  int i4;

  if( u1 != 0xff ){
    u1 = 0xff;
  }
  else {
    u1 = 55;
  }
  i4=u1;  
  return(i4);
}

signed short int sub4( signed int i4 )
{
   signed short int i2;

   i2 = i4;

   return(i2);
}


unsigned short sub6( char i1 ) {
  unsigned short u2;

  u2=i1;  
  return(u2);
}

unsigned short int sub5 (signed int i4)
{
   unsigned short int u2;

   u2 = i4;

   return (u2);
}  
int main( ) {
  char          i1;
  short int     i2;
        int     i4;
  unsigned char     u1=0xff;
  unsigned short    u2;

  i1=sub1_aux(u1);
  if (i1 == -1)   printf(" test1 : ok   \n");
  else            printf(" test1 : ng %d\n",i1);

  i2=sub2(u1);
  if (i2 == 255)   printf(" test2 : ok   \n");
  else             printf(" test2 : ng %d\n",i2);

  u2=sub6(i1);

  i4=sub3(u1);
  if (i4 == 55)   printf(" test3 : ok   \n");
  else            printf(" test3 : ng %d\n",i2);

  i4= 0xffffffff;
  i2 = sub4(i4);
  if (i2 == -1)   printf(" test4 : ok   \n");
  else            printf(" test4 : ng %d\n",i2);

  u2 = sub5(i4);
  if (u2 == 65535)   printf(" test5 : ok  \n");
  else               printf(" test5 : ng %d\n",i2);
}
