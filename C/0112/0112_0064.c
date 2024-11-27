

#include <stdio.h>
#include <math.h>
int main()
{
  int I1;
  float L1,L2,mask,lb[20],ld[20]={5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

#pragma clang loop unroll(disable)
  for(I1=0;I1<=1;I1+=1) {
    L2 = 3;

    mask = 10;
    if (mask == 15) {
      mask=20;
    }

    if (mask == 10) {
      if ( !mask == !mask) {
        L2=5;
      }
    }
    if (L2 == 3 )goto LBL_11         ;

    ld[I1]=1;

  LBL_11:
    ;
  }

  printf(" LD= %g %g \n",ld[0],ld[1]);

}
