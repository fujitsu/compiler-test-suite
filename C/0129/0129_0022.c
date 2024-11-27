#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


#define F  float
#define D  double
#define X  long double
int main(){
       int i;
       F  f00[10],f01[10],f02[10],f03[10],f04[10],f05[10],f06[10],f07[10],f08[10],f09[10]
            , f10[10],f11[10],f12[10],f13[10],f14[10],f15[10],f16[10],f17[10],f18[10],f19[10]
            , f20[10],f21[10],f22[10],f23[10],f24[10],f25[10],f26[10],f27[10],f28[10],f29[10];
       F  *pf00,*pf01,*pf02,*pf03,*pf04,*pf05,*pf06,*pf07,*pf08,*pf09
        , *pf10,*pf11,*pf12,*pf13,*pf14,*pf15,*pf16,*pf17,*pf18,*pf19
        , *pf20,*pf21,*pf22,*pf23,*pf24,*pf25,*pf26,*pf27,*pf28,*pf29;
#ifdef __STDC__
       F  f00_result_chk(F *p0 ,F *p1 ,F *p2 ,F *p3 ,F *p4 ,F *p5
                        ,F *p6 ,F *p7 ,F *p8 ,F *p9 ,F *p10,F *p11
                        ,F *p12,F *p13,F *p14,F *p15,F *p16,F *p17
                        ,F *p18,F *p19,F *p20,F *p21,F *p22,F *p23
                        ,F *p24,F *p25,F *p26,F *p27,F *p28,F *p29);
#else
       F  f00_result_chk( );
#endif
       D d00[10],d01[10],d02[10],d03[10],d04[10],d05[10],d06[10],d07[10],d08[10],d09[10]
       , d10[10],d11[10],d12[10],d13[10],d14[10],d15[10],d16[10],d17[10],d18[10],d19[10]
       , d20[10],d21[10],d22[10],d23[10],d24[10],d25[10],d26[10],d27[10],d28[10],d29[10];
       D *pd00,*pd01,*pd02,*pd03,*pd04,*pd05,*pd06,*pd07,*pd08,*pd09
       , *pd10,*pd11,*pd12,*pd13,*pd14,*pd15,*pd16,*pd17,*pd18,*pd19
       , *pd20,*pd21,*pd22,*pd23,*pd24,*pd25,*pd26,*pd27,*pd28,*pd29;
#ifdef __STDC__
       D  d00_result_chk(D *p0 ,D *p1 ,D *p2 ,D *p3 ,D *p4 ,D *p5
                        ,D *p6 ,D *p7 ,D *p8 ,D *p9 ,D *p10,D *p11
                        ,D *p12,D *p13,D *p14,D *p15,D *p16,D *p17
                        ,D *p18,D *p19,D *p20,D *p21,D *p22,D *p23
                        ,D *p24,D *p25,D *p26,D *p27,D *p28,D *p29);
#else
       D  d00_result_chk( );
#endif
 for (i=0; i < 10; i++)  {
     f00[i]=f01[i]=f02[i]=f03[i]=f04[i]=f05[i]=f06[i]=f07[i]=f08[i]=f09[i]
   = f10[i]=f11[i]=f12[i]=f13[i]=f14[i]=f15[i]=f16[i]=f17[i]=f18[i]=f19[i]
   = f20[i]=f21[i]=f22[i]=f23[i]=f24[i]=f25[i]=f26[i]=f27[i]=f28[i]=f29[i]=1.0;
   pf00=f00 + i;pf01=f00 + i;pf02=f02 + i;pf03=f03 + i;pf04=f04 + i;
   pf05=f05 + i;pf06=f06 + i;pf07=f07 + i;pf08=f08 + i;pf09=f09 + i;
   pf10=f10 + i;pf11=f11 + i;pf12=f12 + i;pf13=f13 + i;pf14=f14 + i;
   pf15=f15 + i;pf16=f16 + i;pf17=f17 + i;pf18=f18 + i;pf19=f19 + i;
   pf20=f20 + i;pf21=f21 + i;pf22=f22 + i;pf23=f23 + i;pf24=f24 + i;
   pf25=f25 + i;pf26=f26 + i;pf27=f27 + i;pf28=f28 + i;pf29=f29 + i;
   if (f00_result_chk(pf00,pf01,pf02,pf03,pf04,pf05,pf06,pf07,pf08,pf09
                , pf10,pf11,pf12,pf13,pf14,pf15,pf16,pf17,pf18,pf19
                , pf20,pf21,pf22,pf23,pf24,pf25,pf26,pf27,pf28,pf29)
       ==30.0) 
      printf ("**  (%d) ** OK\n",i+1);
   else
      printf ("**  (%d) ** NG\n",i+1);
 }
 for (i=0; i < 10; i++)  {
      d00[i]=d01[i]=d02[i]=d03[i]=d04[i]=d05[i]=d06[i]=d07[i]=d08[i]=d09[i]
    = d10[i]=d11[i]=d12[i]=d13[i]=d14[i]=d15[i]=d16[i]=d17[i]=d18[i]=d19[i]
    = d20[i]=d21[i]=d22[i]=d23[i]=d24[i]=d25[i]=d26[i]=d27[i]=d28[i]=d29[i]=1.0;
    pd00=d00 + i;pd01=d00 + i;pd02=d02 + i;pd03=d03 + i;pd04=d04 + i;
    pd05=d05 + i;pd06=d06 + i;pd07=d07 + i;pd08=d08 + i;pd09=d09 + i;
    pd10=d10 + i;pd11=d11 + i;pd12=d12 + i;pd13=d13 + i;pd14=d14 + i;
    pd15=d15 + i;pd16=d16 + i;pd17=d17 + i;pd18=d18 + i;pd19=d19 + i;
    pd20=d20 + i;pd21=d21 + i;pd22=d22 + i;pd23=d23 + i;pd24=d24 + i;
    pd25=d25 + i;pd26=d26 + i;pd27=d27 + i;pd28=d28 + i;pd29=d29 + i;
    if (d00_result_chk(pd00,pd01,pd02,pd03,pd04,pd05,pd06,pd07,pd08,pd09
                 , pd10,pd11,pd12,pd13,pd14,pd15,pd16,pd17,pd18,pd19
                 , pd20,pd21,pd22,pd23,pd24,pd25,pd26,pd27,pd28,pd29)
      ==30.0) 
      printf ("**  (%d) ** OK\n",i+11);
   else
      printf ("**  (%d) ** NG\n",i+11);
 }
 
exit (0);
}
#ifdef __STDC__
F  f00_result_chk(F *p0 ,F *p1 ,F *p2 ,F *p3 ,F *p4 ,F *p5
                 ,F *p6 ,F *p7 ,F *p8 ,F *p9 ,F *p10,F *p11
                 ,F *p12,F *p13,F *p14,F *p15,F *p16,F *p17
                 ,F *p18,F *p19,F *p20,F *p21,F *p22,F *p23
                 ,F *p24,F *p25,F *p26,F *p27,F *p28,F *p29){
#else
F f00_result_chk( p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
               F  *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
                , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
                , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
  return(*p0  + *p1  + *p2  + *p3  + *p4  + *p5  + *p6  + *p7  + *p8  + *p9
       + *p10 + *p11 + *p12 + *p13 + *p14 + *p15 + *p16 + *p17 + *p18 + *p19
       + *p20 + *p21 + *p22 + *p23 + *p24 + *p25 + *p26 + *p27 + *p28 + *p29);
}  
#ifdef __STDC__
D  d00_result_chk(D *p0 ,D *p1 ,D *p2 ,D *p3 ,D *p4 ,D *p5
                 ,D *p6 ,D *p7 ,D *p8 ,D *p9 ,D *p10,D *p11
                 ,D *p12,D *p13,D *p14,D *p15,D *p16,D *p17
                 ,D *p18,D *p19,D *p20,D *p21,D *p22,D *p23
                 ,D *p24,D *p25,D *p26,D *p27,D *p28,D *p29){
#else
D d00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
           D *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
           , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
           , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
  return(*p0  + *p1  + *p2  + *p3  + *p4  + *p5  + *p6  + *p7  + *p8  + *p9
       + *p10 + *p11 + *p12 + *p13 + *p14 + *p15 + *p16 + *p17 + *p18 + *p19
       + *p20 + *p21 + *p22 + *p23 + *p24 + *p25 + *p26 + *p27 + *p28 + *p29);
}  
  
