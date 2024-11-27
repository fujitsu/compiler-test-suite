#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int check( int i);

unsigned char           i1dim[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL };
unsigned short      int i2dim[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL };
unsigned            int i4dim[] =
{ 0, 1, 0xff, 0x100, 0xffff, 0x10000, 0xffffffff, 0x100000000LL };
int main()
{
       int i;
       unsigned char  i1ans[8];
       unsigned short i2ans[8];
       unsigned int   i4ans[8];
       for(i=0;i<8;i++) {
         i1ans[i] = i1dim[i];
         i2ans[i] = i2dim[i];
         i4ans[i] = i4dim[i];
       }
       for(i=0;i<8;i++) {
         if( check(i1ans[i]) ) puts("  NG  ");
         if( check(i2ans[i]) ) puts("  NG  ");
         if( check(i4ans[i]) ) puts("  NG  ");
       }
       puts("  OK  ");
exit (0);
}
unsigned int data[] = {
  0,         0,         0,
  1,         1,         1,
255,       255,       255,
  0,       256,       256,
255,     65535,     65535,
  0,         0,     65536,
255,     65535,4294967295,
  0,         0,         0
};

int check( int i)
{
    static int j=0;
    return i!=data[j++];
}
