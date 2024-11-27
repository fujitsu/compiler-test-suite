#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


int f00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29)
            long long int  p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29;{
  if (p0==30 && p1 && p2 && p3 && p4 && p5 && p6 && p7 && p8 && p9
               && p10 && p11 && p12 && p13 && p14 && p15 && p16 && p17 && p18 && p19
               && p20 && p21 && p22 && p23 && p24 && p25 && p26 && p27 && p28 && p29)
    return 1;
  else
    return 0;
}

int main(){
       int i,x00_result,f00_result,d00_result;
       long long int  f00[10],f01[10],f02[10],f03[10],f04[10],f05[10],f06[10],f07[10],f08[10],f09[10]
            , f10[10],f11[10],f12[10],f13[10],f14[10],f15[10],f16[10],f17[10],f18[10],f19[10]
            , f20[10],f21[10],f22[10],f23[10],f24[10],f25[10],f26[10],f27[10],f28[10],f29[10];
 for (i=0; i < 10; i++)  {
     f00[i]=f01[i]=f02[i]=f03[i]=f04[i]=f05[i]=f06[i]=f07[i]=f08[i]=f09[i]
   = f10[i]=f11[i]=f12[i]=f13[i]=f14[i]=f15[i]=f16[i]=f17[i]=f18[i]=f19[i]
   = f20[i]=f21[i]=f22[i]=f23[i]=f24[i]=f25[i]=f26[i]=f27[i]=f28[i]=f29[i]=1ll;
  }
 for (i=0; i < 10; i++) {
    f00[i]=  f00[i]+f01[i]+f02[i]+f03[i]+f04[i]+f05[i]+f06[i]+f07[i]+f08[i]+f09[i]
           + f10[i]+f11[i]+f12[i]+f13[i]+f14[i]+f15[i]+f16[i]+f17[i]+f18[i]+f19[i]
           + f20[i]+f21[i]+f22[i]+f23[i]+f24[i]+f25[i]+f26[i]+f27[i]+f28[i]+f29[i];
 }
  for (i=0; i < 10; i++)  {
   f00_result=
   f00_result_chk(f00[i],f01[i],f02[i],f03[i],f04[i],f05[i],f06[i],f07[i],f08[i],f09[i]
                , f10[i],f11[i],f12[i],f13[i],f14[i],f15[i],f16[i],f17[i],f18[i],f19[i]
                , f20[i],f21[i],f22[i],f23[i],f24[i],f25[i],f26[i],f27[i],f28[i],f29[i]);
  if ( f00_result) 
      printf ("**  (%d) ** OK\n",i+1);
   else
      printf ("**  (%d) ** NG\n",i+1);
  }
exit (0);
}
