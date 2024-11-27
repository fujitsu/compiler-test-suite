#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int check( int ia);

unsigned int  returncode[100];
static int i=0;

void sub(u)
unsigned int u;
{
      returncode[i] = u;
      i++;
}

void sub1(uix)
unsigned int uix;
{
    unsigned char      ucx;
    short unsigned int usx;

    ucx=uix;
    usx=uix;

    sub(ucx);
    sub(usx);
    sub(uix);

}

void sub2(uix)
unsigned int uix;
{
    volatile unsigned char      ucx;
    volatile short unsigned int usx;

    ucx=uix;
    usx=uix;

    sub(ucx);
    sub(usx);
    sub(uix);

}
int main()
{
      int i;
       sub1(0);    sub2(0);
       sub1(1);    sub2(1);
       sub1(0xff); sub2(0xff);
       sub1(0x100); sub2(0x100);
       sub1(0xffff); sub2(0xffff);
       sub1(0x10000); sub2(0x10000);
       sub1(0xffffffff); sub2(0xffffffff);
       sub1(0x1L); sub2(0x01); 
      for(i=0;i<2*3*8;i+=3) {
        if( check(returncode[i]) ||
            check(returncode[i+1]) ||
            check(returncode[i+2])   ) {
            puts(" NG  ");
            exit(1);
        }
      }
      puts(" OK  ");
exit (0);
}

unsigned int data[] = {
           0 ,                   0 ,                   0 ,
           0 ,                   0 ,                   0 ,
           1 ,                   1 ,                   1 ,
           1 ,                   1 ,                   1 ,
         255 ,                 255 ,                 255 ,
         255 ,                 255 ,                 255 ,
           0 ,                 256 ,                 256 ,
           0 ,                 256 ,                 256 ,
         255 ,               65535 ,               65535 ,
         255 ,               65535 ,               65535 ,
           0 ,                   0 ,               65536 ,
           0 ,                   0 ,               65536 ,
         255 ,               65535 ,          4294967295 ,
         255 ,               65535 ,          4294967295 ,
           1 ,                   1 ,                   1 ,
           1 ,                   1 ,                   1
};

int check( int ia)
{
  static int j=0;
  return data[j++] != ia;
}

