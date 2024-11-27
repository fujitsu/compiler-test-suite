#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define  array_max   10
#define  mask_u1     0x01
#define  mask_u2     0x0001
#define  mask_u4     0x00000001
#define  test_mask1  0x10
#define  test_mask2  0x1000
#define  test_mask3  0x10000000
struct aroundtr1{
        unsigned char atta1 :1;
        unsigned char atta2 :1;
} *ptr1;
struct aroundtr2{
        unsigned short int attb1 :1;
        unsigned short int attb2 :1;
} *ptr2;
struct aroundtr3{
        unsigned int  atte1 :1;
        unsigned int  atte2 :1;
} *ptr3;
struct around {
       struct aroundtr1 u1;
       struct aroundtr2 u2;
       struct aroundtr3 u4;
 } ws[array_max+1];
int main() {
 int i;
 register struct  around   *p;
           char   *ti1;
 unsigned  char   *tu1;
 unsigned  short  *tu2;
           short  *ti2;
 unsigned  int    *tu4;
           int    *ti4;
          long    *ti8;
      for(i=0; i<= array_max-1; i++){
            p = &ws[i];
            if( i & 0x00000001 ){
                  tu1 = (unsigned char *)&(p->u1);
                  tu2 = (unsigned short *)&(p->u2);
                  tu4 = (unsigned int   *)&(p->u4);
                  *tu1 = mask_u1;
                  *tu2 = mask_u2;
                  *tu4 = mask_u4;
            }
      }
      for(i=0; i<= array_max-1; i++){
            p = &ws[i];
            if( i%2 == 0 ){
                 ti1 = (char *)&(p->u1);
                 if((*ti1>>7 & test_mask1))
                       printf("test ==> ng\n");
                 ti2 = (short *)&(p->u2);
                 if((*ti2>>15 & test_mask2))
                       printf("test ==> ng\n");
                 ti4 = (int *)&(p->u4);
                 if((*ti4>>31 & test_mask3))
                       printf("test ==> ng\n");
             }
       }
       printf("test ==> ok\n");
	exit(0);
exit (0);
 }
