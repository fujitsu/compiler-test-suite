#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main( ) {
  struct t {
              signed  char      i1:8;
            unsigned  char      u1:8;
              signed  short int i2:16;
            unsigned  short int u2:16;
              signed  int       i4:32;
            unsigned  int       u4:32;
           } x;
  x.i1=0;
           if (x.i1==0)
                       printf("**dpmk2025-(1)* OK  x.i1=%.8x\n",x.i1);
           else        printf("**dpmk2025-(1)* NG  x.i1=%.8x\n",x.i1);
  x.u1=0;
           if (x.u1==0)
                       printf("**dpmk2025-(2)* OK  x.u1=%.8x\n",x.u1);
           else        printf("**dpmk2025-(2)* NG  x.u1=%.8x\n",x.u1);
  x.i2=0;
           if (x.i2==0)
                       printf("**dpmk2025-(3)* OK  x.i2=%.16x\n",x.i2);
           else        printf("**dpmk2025-(3)* NG  x.i2=%.16x\n",x.i2);
  x.u2=0;
           if (x.u2==0)
                       printf("**dpmk2025-(4)* OK  x.i2=%.16x\n",x.i2);
           else        printf("**dpmk2025-(4)* NG  x.i2=%.16x\n",x.i2);
  x.i4=0;
           if (x.i4==0)
                       printf("**dpmk2025-(5)* OK  x.i4=%.32x\n",x.i4);
           else        printf("**dpmk2025-(5)* NG  x.i4=%.32x\n",x.i4);
  x.u4=0;
           if (x.u4==0)
                       printf("**dpmk2025-(6)* OK  x.i4=%.32x\n",x.i4);
           else        printf("**dpmk2025-(6)* NG  x.i4=%.32x\n",x.i4);
exit (0);
} 
