#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main( ) {
  int a,b,c;
  unsigned int d,e,f;
  void sub( );
              b=0x00000000;c=0xffffffff;
  a=b  &  c;
              if (a==0)          printf("**dpmk2009-(01)** OK \n");
              else               printf("**dpmk2009-(01)** NG a=%0.8x\n",a);
  a=b  |  c;
              if (a==-1)         printf("**dpmk2009-(02)** OK \n");
              else               printf("**dpmk2009-(02)** NG a=%0.8x\n",a);
              e=0x0000ffff;f=0xffff0000;
  d=e  ^  f;
              if (d==-1)         printf("**dpmk2009-(03)** OK \n");
              else               printf("**dpmk2009-(03)** NG d=%0.8x\n",d);
  d=~b;
              if (d==-1)         printf("**dpmk2009-(04)** OK \n");
              else               printf("**dpmk2009-(04)** NG d=%0.8x\n",d);
  a=b  &  8;
              if (a==0)          printf("**dpmk2009-(05)** OK \n");
              else               printf("**dpmk2009-(05)** NG a=%0.8x\n",a);
  a=b  |  2147483648;
              if (a==0x80000000) printf("**dpmk2009-(06)** OK \n");
              else               printf("**dpmk2009-(06)** NG a=%0.8x\n",a);
              e=0x0000ffff;
  d=e  ^  0xffff0000;
              if (d==0xffffffff) printf("**dpmk2009-(07)** OK \n");
              else               printf("**dpmk2009-(07)** NG d=%0.8x\n",d);
  a=-1  &  b;
              if (a==0)          printf("**dpmk2009-(08)** OK \n");
              else               printf("**dpmk2009-(08)** NG a=%0.8x\n",a);
  a= 0  |  c;
              if (a==-1)         printf("**dpmk2009-(09)** OK \n");
              else               printf("**dpmk2009-(09)** NG a=%0.8x\n",a);
  d=65536 ^ e;
              if (d==0x0001ffff) printf("**dpmk2009-(10)** OK \n");
              else               printf("**dpmk2009-(10)** NG d=%0.8x\n",d);
exit (0);
}
