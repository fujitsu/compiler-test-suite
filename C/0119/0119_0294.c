#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int check(unsigned i);
void mod();
void mult();
void subs();
void add();
void my_div();

unsigned char           i1dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL,
      0x7f,0x80, 0x81 } ;
unsigned short      int i2dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL,
               0x7fff,0x8000, 0x8001 } ;
unsigned            int i4dim1[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL,
                            0x7fffff,0x800000, 0x800001 } ;

unsigned int sub();
int main()
{
       add();
       subs();
       mult();
       my_div();
       mod();
       puts("  OK  ");
exit (0);
}
void add()
{
       int i;
       unsigned char  i1,i1ans[11];
       unsigned short i2,i2ans[11];
       unsigned int   i4,i4ans[11];
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 + (unsigned char)1;
          i2ans[i] = i2 + (unsigned short)1;
          i4ans[i] = i4 + (unsigned int)1;
       }
       for(i=0;i<11;i++) {
          if( check(i1ans[i] ) ) puts("  NG  ");
          if( check(i2ans[i] ) ) puts("  NG  ");
          if( check(i4ans[i] ) ) puts("  NG  ");
       }
}
void subs()
{
       int i;
       unsigned char  i1,i1ans[11];
       unsigned short i2,i2ans[11];
       unsigned int   i4,i4ans[11];
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 - (unsigned char)1;
          i2ans[i] = i2 - (unsigned short)1;
          i4ans[i] = i4 - (unsigned int)1;
       }
       for(i=0;i<11;i++) {
          if( check(i1ans[i] ) ) puts("  NG  ");
          if( check(i2ans[i] ) ) puts("  NG  ");
          if( check(i4ans[i] ) ) puts("  NG  ");
       }
}
void mult()
{
       int i;
       unsigned char  i1,i1ans[11],o1;
       unsigned short i2,i2ans[11],o2;
       unsigned int   i4,i4ans[11],o4;
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 * (o1=sub());
          i2ans[i] = i2 * (o2=sub());
          i4ans[i] = i4 * (o4=sub());
       }
       for(i=0;i<11;i++) {
          if( check(i1ans[i] ) ) puts("  NG  ");
          if( check(i2ans[i] ) ) puts("  NG  ");
          if( check(i4ans[i] ) ) puts("  NG  ");
       }
}
void my_div()
{
       int i;
       unsigned char  i1,i1ans[11],o1;
       unsigned short i2,i2ans[11],o2;
       unsigned int   i4,i4ans[11],o4;
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 / (o1=sub());
          i2ans[i] = i2 / (o2=sub());
          i4ans[i] = i4 / (o4=sub());
       }
       for(i=0;i<11;i++) {
          if( check(i1ans[i] ) ) puts("  NG  ");
          if( check(i2ans[i] ) ) puts("  NG  ");
          if( check(i4ans[i] ) ) puts("  NG  ");
       }
}
void mod()
{
       int i;
       unsigned char  i1,i1ans[11],o1;
       unsigned short i2,i2ans[11],o2;
       unsigned int   i4,i4ans[11],o4;
       for(i=0;i<11;i++) {
          i1         = i1dim1[i];
          i2         = i2dim1[i];
          i4         = i4dim1[i];
          i1ans[i] = i1 % (o1=sub());
          i2ans[i] = i2 % (o2=sub());
          i4ans[i] = i4 % (o4=sub());
       }
       for(i=0;i<11;i++) {
          if( check(i1ans[i] ) ) puts("  NG  ");
          if( check(i2ans[i] ) ) puts("  NG  ");
          if( check(i4ans[i] ) ) puts("  NG  ");
       }
}
unsigned int g=2;
unsigned sub()
{
  return g;
}
unsigned int data[] = {
         1,         1,         1,
         2,         2,         2,
         0,       256,       256,
         1,       257,       257,
         0,         0,     65536,
         1,         1,     65537,
         0,         0,         0,
         1,         1,         1,
       128,     32768,   8388608,
       129,     32769,   8388609,
       130,     32770,   8388610,
       255,     65535,4294967295,
         0,         0,         0,
       254,       254,       254,
       255,       255,       255,
       254,     65534,     65534,
       255,     65535,     65535,
       254,     65534,4294967294,
       255,     65535,4294967295,
       126,     32766,   8388606,
       127,     32767,   8388607,
       128,     32768,   8388608,
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
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1
};
int check(unsigned i)
{
      static int j=0;
      return i!=data[j++];
}
