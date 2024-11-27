#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int check( int i);

unsigned char           i1dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL };
unsigned short      int i2dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL };
unsigned            int i4dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL };
int main()
{
       int i,sum1=0,sum2=0;
       unsigned char  i1,i1b=0,i1ans[8];
       unsigned short i2,i2b=0,i2ans[8];
       unsigned int            i4ans[8];
       register unsigned int   i4,i4b;
       int     flg1[8],flg2[8],flg4[8];
       i4b=0;
       for(i=0;i<8;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          if( i1b = i1 )
             flg1[i]=1;
          else
             flg1[i]=0;
          if( i2b = i2 )
             flg2[i]=1;
          else
             flg2[i]=0;
          if( i4b = i4 )
             flg4[i]=1;
          else
             flg4[i]=0;
          i1ans[i] = i1b;
          i2ans[i] = i2b;
          i4ans[i] = i4b;
          sum1= i1+i2+i4+sum1;
          sum2= i1b+i2b+i4b+sum2;
       }
       for(i=0;i<8;i++) {
         if( check(i1ans[i]) ) puts(" NG ");
         if( check(i2ans[i]) ) puts(" NG ");
         if( check(i4ans[i]) ) puts(" NG ");
         if( check(flg1[i]) ) puts(" NG ");
         if( check(flg2[i]) ) puts(" NG ");
         if( check(flg4[i]) ) puts(" NG ");
       }
       sum1=sum1+1;
       puts(" OK ");
       sum2=sum2+1;
exit (0);
}
unsigned int data[] = {
   0,         0,         0,
   0,         0,         0,
   1,         1,         1,
   1,         1,         1,
 255,       255,       255,
   1,         1,         1,
   0,       256,       256,
   0,         1,         1,
 255,     65535,     65535,
   1,         1,         1,
   0,         0,     65536,
   0,         0,         1,
 255,     65535,4294967295,
   1,         1,         1,
   0,         0,         0,
   0,         0,         0
};
int check( int i)
{
      static int j=0;
      return i!=data[j++];
}
