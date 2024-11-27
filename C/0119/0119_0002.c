#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main() {
  unsigned char          u1();
  unsigned short int     u2();
  unsigned int           u4();
  unsigned char          u1a,u1b;
  unsigned short int     u2a,u2b;
  unsigned int           u4a,u4b;
  printf("scn1215 start\n");
  u1a=0xff;u1b=0xff;
  if (u1(u1a,u1b)==1) printf("u1:ok\n");else printf("u1:ng\n");
  u2a=0xffff;u2b=0xffff;
  if (u2(u2a,u2b)==1) printf("u2:ok\n");else printf("u2:ng\n");
  u4a=0xffffffff;u4b=0xffffffff;
  if (u4(u4a,u4b)==1) printf("u4-1:ok\n");else printf("u4-1:ng\n");
  u4a=0x80000000;u4b=0x80000000;
  if (u4(u4a,u4b)==1) printf("u4-2:ok\n");else printf("u4-2:ng\n");
  u4a=0x10000000;u4b=0x10000000;
  if (u4(u4a,u4b)==1) printf("u4-3:ok\n");else printf("u4-3:ng\n");
  printf("scn1215 ended\n");
exit (0);
}
unsigned char u1(ua,ub) unsigned char ua,ub;{return(ua/ub);}
unsigned short int u2(ua,ub) unsigned short int ua,ub;{return(ua/ub);}
unsigned int u4(ua,ub) unsigned int  ua,ub;{return(ua/ub);}
