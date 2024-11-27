#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int check(unsigned i);
int varright(unsigned int u);
int varleft(unsigned int u);
int contright();
int contleft();

unsigned char           i1dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL,
      0x7f,0x80, 0x81 } ;
unsigned short      int i2dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL,
               0x7fff,0x8000, 0x8001 } ;
unsigned            int i4dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL,
                            0x7fffff,0x800000, 0x800001 } ;
int main()
{
       contleft();
       contright();
       varleft(1);
       varright(1);
       puts(" OK ");
exit (0);
}
int contleft()
{
       int i;
       unsigned char  i1,i1ans[11];
       unsigned short i2,i2ans[11];
       unsigned int   i4,i4ans[11];
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 << 1;
          i2ans[i] = i2 << 1;
          i4ans[i] = i4 << 1;
       }
       for(i=0;i<11;i++) {
         if( check(i1ans[i]) ) puts("  NG  ");
         if( check(i2ans[i]) ) puts("  NG  ");
         if( check(i4ans[i]) ) puts("  NG  ");
       }
}
int contright()
{
       int i;
       unsigned char  i1,i1ans[11];
       unsigned short i2,i2ans[11];
       unsigned int   i4,i4ans[11];
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 >> 1;
          i2ans[i] = i2 >> 1;
          i4ans[i] = i4 >> 1;
       }
       for(i=0;i<11;i++) {
         if( check(i1ans[i]) ) puts("  NG  ");
         if( check(i2ans[i]) ) puts("  NG  ");
         if( check(i4ans[i]) ) puts("  NG  ");
       }
}
int varleft(u)
unsigned int u;
{
       int i;
       unsigned char  i1,i1ans[11];
       unsigned short i2,i2ans[11];
       unsigned int   i4,i4ans[11];
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 << u;
          i2ans[i] = i2 << u;
          i4ans[i] = i4 << u;
       }
       for(i=0;i<11;i++) {
         if( check(i1ans[i]) ) puts("  NG  ");
         if( check(i2ans[i]) ) puts("  NG  ");
         if( check(i4ans[i]) ) puts("  NG  ");
       }
}
int varright(u)
unsigned int u;
{
       int i;
       unsigned char  i1,i1ans[11];
       unsigned short i2,i2ans[11];
       unsigned int   i4,i4ans[11];
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 >> u;
          i2ans[i] = i2 >> u;
          i4ans[i] = i4 >> u;
       }
       for(i=0;i<11;i++) {
         if( check(i1ans[i]) ) puts("  NG  ");
         if( check(i2ans[i]) ) puts("  NG  ");
         if( check(i4ans[i]) ) puts("  NG  ");
       }
}
unsigned int data[] = {
         0,         0,         0,
         2,         2,         2,
       254,       510,       510,
         0,       512,       512,
       254,     65534,    131070,
         0,         0,    131072,
       254,     65534,4294967294,
         0,         0,         0,
       254,     65534,  16777214,
         0,         0,  16777216,
         2,         2,  16777218,
         0,         0,         0,
         0,         0,         0,
       127,       127,       127,
         0,       128,       128,
       127,     32767,     32767,
         0,         0,     32768,
       127,     32767,2147483647,
         0,         0,         0,
        63,     16383,   4194303,
        64,     16384,   4194304,
        64,     16384,   4194304,
         0,         0,         0,
         2,         2,         2,
       254,       510,       510,
         0,       512,       512,
       254,     65534,    131070,
         0,         0,    131072,
       254,     65534,4294967294,
         0,         0,         0,
       254,     65534,  16777214,
         0,         0,  16777216,
         2,         2,  16777218,
         0,         0,         0,
         0,         0,         0,
       127,       127,       127,
         0,       128,       128,
       127,     32767,     32767,
         0,         0,     32768,
       127,     32767,2147483647,
         0,         0,         0,
        63,     16383,   4194303,
        64,     16384,   4194304,
        64,     16384,   4194304
};
int check(i)
unsigned i;
{
     static int j=0;
     return i != data[j++] ;
}
