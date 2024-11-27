#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


#define F  long long int
       int i;
       F  f00[10],f01[10],f02[10],f03[10],f04[10],f05[10],f06[10],f07[10],f08[10],f09[10]
            , f10[10],f11[10],f12[10],f13[10],f14[10],f15[10],f16[10],f17[10],f18[10],f19[10]
            , f20[10],f21[10],f22[10],f23[10],f24[10],f25[10],f26[10],f27[10],f28[10],f29[10];
       F  *pf00,*pf01,*pf02,*pf03,*pf04,*pf05,*pf06,*pf07,*pf08,*pf09
        , *pf10,*pf11,*pf12,*pf13,*pf14,*pf15,*pf16,*pf17,*pf18,*pf19
        , *pf20,*pf21,*pf22,*pf23,*pf24,*pf25,*pf26,*pf27,*pf28,*pf29;
       F  f00_result_chk( );
int main(){
 for (i=0; i < 10; i++)  {
     f00[i]=f01[i]=f02[i]=f03[i]=f04[i]=f05[i]=f06[i]=f07[i]=f08[i]=f09[i]
   = f10[i]=f11[i]=f12[i]=f13[i]=f14[i]=f15[i]=f16[i]=f17[i]=f18[i]=f19[i]
   = f20[i]=f21[i]=f22[i]=f23[i]=f24[i]=f25[i]=f26[i]=f27[i]=f28[i]=f29[i]=1ll;
   pf00=f00 + i;pf01=f01 + i;pf02=f02 + i;pf03=f03 + i;pf04=f04 + i;
   pf05=f05 + i;pf06=f06 + i;pf07=f07 + i;pf08=f08 + i;pf09=f09 + i;
   pf10=f10 + i;pf11=f11 + i;pf12=f12 + i;pf13=f13 + i;pf14=f14 + i;
   pf15=f15 + i;pf16=f16 + i;pf17=f17 + i;pf18=f18 + i;pf19=f19 + i;
   pf20=f20 + i;pf21=f21 + i;pf22=f22 + i;pf23=f23 + i;pf24=f24 + i;
   pf25=f25 + i;pf26=f26 + i;pf27=f27 + i;pf28=f28 + i;pf29=f29 + i;
   if (f00_result_chk(pf00,pf01,pf02,pf03,pf04,pf05,pf06,pf07,pf08,pf09
                , pf10,pf11,pf12,pf13,pf14,pf15,pf16,pf17,pf18,pf19
                , pf20,pf21,pf22,pf23,pf24,pf25,pf26,pf27,pf28,pf29)
       ==30ll) 
      printf ("**  (%d) ** OK\n",i+1);
   else
      printf ("**  (%d) ** NG\n",i+1);
}
exit (0);
}
F f00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
               F  *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
                , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
                , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
  return(*p0  + *p1  + *p2  + *p3  + *p4  + *p5  + *p6  + *p7  + *p8  + *p9
       + *p10 + *p11 + *p12 + *p13 + *p14 + *p15 + *p16 + *p17 + *p18 + *p19
       + *p20 + *p21 + *p22 + *p23 + *p24 + *p25 + *p26 + *p27 + *p28 + *p29);
}  
  
