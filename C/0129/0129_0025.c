#include <stdlib.h>
#include <math.h>
#include  <stdio.h>


#define F  struct t1
#define D  struct t2
#define X  struct t3
F {
   signed char  e;
   signed char  :1;
   signed char  :1;
   signed char  :1;
   signed char  :1;
   signed char f:1;
   signed char  :3;
  };
D {
   signed short int  k[10];
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int  :1;
   signed short int d:1;
  };
X {
   signed int   g[60];
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int x:1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
   signed int  :1;
  };
int main( ) {
       int i,ON,OFF;
       F  f00[10],f01[10],f02[10],f03[10],f04[10],f05[10],f06[10],f07[10],f08[10],f09[10]
            , f10[10],f11[10],f12[10],f13[10],f14[10],f15[10],f16[10],f17[10],f18[10],f19[10]
            , f20[10],f21[10],f22[10],f23[10],f24[10],f25[10],f26[10],f27[10],f28[10],f29[10];
       F  *pf00,*pf01,*pf02,*pf03,*pf04,*pf05,*pf06,*pf07,*pf08,*pf09
        , *pf10,*pf11,*pf12,*pf13,*pf14,*pf15,*pf16,*pf17,*pf18,*pf19
        , *pf20,*pf21,*pf22,*pf23,*pf24,*pf25,*pf26,*pf27,*pf28,*pf29;
#ifdef __STDC__
       void  f00_result_chk(F *p0 ,F *p1 ,F *p2 ,F *p3 ,F *p4 ,F *p5
                        ,F *p6 ,F *p7 ,F *p8 ,F *p9 ,F *p10,F *p11
                        ,F *p12,F *p13,F *p14,F *p15,F *p16,F *p17
                        ,F *p18,F *p19,F *p20,F *p21,F *p22,F *p23
                        ,F *p24,F *p25,F *p26,F *p27,F *p28,F *p29);
#else
       void  f00_result_chk( );
#endif
       D d00[10],d01[10],d02[10],d03[10],d04[10],d05[10],d06[10],d07[10],d08[10],d09[10]
       , d10[10],d11[10],d12[10],d13[10],d14[10],d15[10],d16[10],d17[10],d18[10],d19[10]
       , d20[10],d21[10],d22[10],d23[10],d24[10],d25[10],d26[10],d27[10],d28[10],d29[10];
       D *pd00,*pd01,*pd02,*pd03,*pd04,*pd05,*pd06,*pd07,*pd08,*pd09
       , *pd10,*pd11,*pd12,*pd13,*pd14,*pd15,*pd16,*pd17,*pd18,*pd19
       , *pd20,*pd21,*pd22,*pd23,*pd24,*pd25,*pd26,*pd27,*pd28,*pd29;
#ifdef __STDC__
       void  d00_result_chk(D *p0 ,D *p1 ,D *p2 ,D *p3 ,D *p4 ,D *p5
                        ,D *p6 ,D *p7 ,D *p8 ,D *p9 ,D *p10,D *p11
                        ,D *p12,D *p13,D *p14,D *p15,D *p16,D *p17
                        ,D *p18,D *p19,D *p20,D *p21,D *p22,D *p23
                        ,D *p24,D *p25,D *p26,D *p27,D *p28,D *p29);
#else
       void  d00_result_chk( );
#endif
       X x00[10],x01[10],x02[10],x03[10],x04[10],x05[10],x06[10],x07[10],x08[10],x09[10]
       , x10[10],x11[10],x12[10],x13[10],x14[10],x15[10],x16[10],x17[10],x18[10],x19[10]
       , x20[10],x21[10],x22[10],x23[10],x24[10],x25[10],x26[10],x27[10],x28[10],x29[10];
       X *px00,*px01,*px02,*px03,*px04,*px05,*px06,*px07,*px08,*px09
       , *px10,*px11,*px12,*px13,*px14,*px15,*px16,*px17,*px18,*px19
       , *px20,*px21,*px22,*px23,*px24,*px25,*px26,*px27,*px28,*px29;
#ifdef __STDC__
       void  x00_result_chk(X *p0 ,X *p1 ,X *p2 ,X *p3 ,X *p4 ,X *p5
                        ,X *p6 ,X *p7 ,X *p8 ,X *p9 ,X *p10,X *p11
                        ,X *p12,X *p13,X *p14,X *p15,X *p16,X *p17
                        ,X *p18,X *p19,X *p20,X *p21,X *p22,X *p23
                        ,X *p24,X *p25,X *p26,X *p27,X *p28,X *p29);
#else
       void  x00_result_chk( );
#endif
 ON=1;OFF=0;
 for (i=0; i < 10; i++)  {
     f00[i].f=f01[i].f=f02[i].f=f03[i].f=f04[i].f=f05[i].f=f06[i].f=f07[i].f=f08[i].f=f09[i].f
   = f10[i].f=f11[i].f=f12[i].f=f13[i].f=f14[i].f=f15[i].f=f16[i].f=f17[i].f=f18[i].f=f19[i].f
   = f20[i].f=f21[i].f=f22[i].f=f23[i].f=f24[i].f=f25[i].f=f26[i].f=f27[i].f=f28[i].f=f29[i].f=ON;
   pf00=f00 + i;pf01=f01 + i;pf02=f02 + i;pf03=f03 + i;pf04=f04 + i;
   pf05=f05 + i;pf06=f06 + i;pf07=f07 + i;pf08=f08 + i;pf09=f09 + i;
   pf10=f10 + i;pf11=f11 + i;pf12=f12 + i;pf13=f13 + i;pf14=f14 + i;
   pf15=f15 + i;pf16=f16 + i;pf17=f17 + i;pf18=f18 + i;pf19=f19 + i;
   pf20=f20 + i;pf21=f21 + i;pf22=f22 + i;pf23=f23 + i;pf24=f24 + i;
   pf25=f25 + i;pf26=f26 + i;pf27=f27 + i;pf28=f28 + i;pf29=f29 + i;
   f00_result_chk(pf00,pf01,pf02,pf03,pf04,pf05,pf06,pf07,pf08,pf09
                , pf10,pf11,pf12,pf13,pf14,pf15,pf16,pf17,pf18,pf19
                , pf20,pf21,pf22,pf23,pf24,pf25,pf26,pf27,pf28,pf29);
   if (f00[i].f==f01[i].f&&f02[i].f==f03[i].f&&f04[i].f==f05[i].f&&f06[i].f==f07[i].f&&f08[i].f==f09[i].f
    && f10[i].f==f11[i].f&&f12[i].f==f13[i].f&&f14[i].f==f15[i].f&&f16[i].f==f17[i].f&&f18[i].f==f19[i].f
    && f20[i].f==f21[i].f&&f22[i].f==f23[i].f&&f24[i].f==f25[i].f&&f26[i].f==f27[i].f&&f28[i].f==f29[i].f
    && f29[i].f==OFF)
      printf ("**  (%d) ** OK\n",i+1);
   else
      printf ("**  (%d) ** NG\n",i+1);
 }
 for (i=0; i < 10; i++)  {
     d00[i].d=d01[i].d=d02[i].d=d03[i].d=d04[i].d=d05[i].d=d06[i].d=d07[i].d=d08[i].d=d09[i].d
   = d10[i].d=d11[i].d=d12[i].d=d13[i].d=d14[i].d=d15[i].d=d16[i].d=d17[i].d=d18[i].d=d19[i].d
   = d20[i].d=d21[i].d=d22[i].d=d23[i].d=d24[i].d=d25[i].d=d26[i].d=d27[i].d=d28[i].d=d29[i].d=ON;
    pd00=d00 + i;pd01=d01 + i;pd02=d02 + i;pd03=d03 + i;pd04=d04 + i;
    pd05=d05 + i;pd06=d06 + i;pd07=d07 + i;pd08=d08 + i;pd09=d09 + i;
    pd10=d10 + i;pd11=d11 + i;pd12=d12 + i;pd13=d13 + i;pd14=d14 + i;
    pd15=d15 + i;pd16=d16 + i;pd17=d17 + i;pd18=d18 + i;pd19=d19 + i;
    pd20=d20 + i;pd21=d21 + i;pd22=d22 + i;pd23=d23 + i;pd24=d24 + i;
    pd25=d25 + i;pd26=d26 + i;pd27=d27 + i;pd28=d28 + i;pd29=d29 + i;
    d00_result_chk(pd00,pd01,pd02,pd03,pd04,pd05,pd06,pd07,pd08,pd09
                 , pd10,pd11,pd12,pd13,pd14,pd15,pd16,pd17,pd18,pd19
                 , pd20,pd21,pd22,pd23,pd24,pd25,pd26,pd27,pd28,pd29);
   if (d00[i].d==d01[i].d&&d02[i].d==d03[i].d&&d04[i].d==d05[i].d&&d06[i].d==d07[i].d&&d08[i].d==d09[i].d
    && d10[i].d==d11[i].d&&d12[i].d==d13[i].d&&d14[i].d==d15[i].d&&d16[i].d==d17[i].d&&d18[i].d==d19[i].d
    && d20[i].d==d21[i].d&&d22[i].d==d23[i].d&&d24[i].d==d25[i].d&&d26[i].d==d27[i].d&&d28[i].d==d29[i].d
    && d29[i].d==OFF)
      printf ("**  (%d) ** OK\n",i+11);
   else
      printf ("**  (%d) ** NG\n",i+11);
 }
  for (i=0; i < 10; i++)  {
     x00[i].x=x01[i].x=x02[i].x=x03[i].x=x04[i].x=x05[i].x=x06[i].x=x07[i].x=x08[i].x=x09[i].x
   = x10[i].x=x11[i].x=x12[i].x=x13[i].x=x14[i].x=x15[i].x=x16[i].x=x17[i].x=x18[i].x=x19[i].x
   = x20[i].x=x21[i].x=x22[i].x=x23[i].x=x24[i].x=x25[i].x=x26[i].x=x27[i].x=x28[i].x=x29[i].x=ON;
   px00=x00 + i;px01=x01 + i;px02=x02 + i;px03=x03 + i;px04=x04 + i;
   px05=x05 + i;px06=x06 + i;px07=x07 + i;px08=x08 + i;px09=x09 + i;
   px10=x10 + i;px11=x11 + i;px12=x12 + i;px13=x13 + i;px14=x14 + i;
   px15=x15 + i;px16=x16 + i;px17=x17 + i;px18=x18 + i;px19=x19 + i;
   px20=x20 + i;px21=x21 + i;px22=x22 + i;px23=x23 + i;px24=x24 + i;
   px25=x25 + i;px26=x26 + i;px27=x27 + i;px28=x28 + i;px29=x29 + i;
   x00_result_chk(px00,px01,px02,px03,px04,px05,px06,px07,px08,px09
                , px10,px11,px12,px13,px14,px15,px16,px17,px18,px19
                ,px20,px21,px22,px23,px24,px25,px26,px27,px28,px29);
   if (x00[i].x==x01[i].x&&x02[i].x==x03[i].x&&x04[i].x==x05[i].x&&x06[i].x==x07[i].x&&x08[i].x==x09[i].x
    && x10[i].x==x11[i].x&&x12[i].x==x13[i].x&&x14[i].x==x15[i].x&&x16[i].x==x17[i].x&&x18[i].x==x19[i].x
    && x20[i].x==x21[i].x&&x22[i].x==x23[i].x&&x24[i].x==x25[i].x&&x26[i].x==x27[i].x&&x28[i].x==x29[i].x
    && x29[i].x==OFF)
      printf ("**  (%d) ** OK\n",i+12);
   else
      printf ("**  (%d) ** NG\n",i+12);
 }
exit (0);
}
#ifdef __STDC__
void  f00_result_chk(F *p0 ,F *p1 ,F *p2 ,F *p3 ,F *p4 ,F *p5
                 ,F *p6 ,F *p7 ,F *p8 ,F *p9 ,F *p10,F *p11
                 ,F *p12,F *p13,F *p14,F *p15,F *p16,F *p17
                 ,F *p18,F *p19,F *p20,F *p21,F *p22,F *p23
                 ,F *p24,F *p25,F *p26,F *p27,F *p28,F *p29){
#else
void f00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
               F  *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
                , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
                , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
      p29->f=0;
       *p0 =*p1 =*p2=*p3=*p4=*p5=*p6 =*p7=*p8=*p9
      =*p10=*p11=*p12=*p13=*p14=*p15=*p16=*p17=*p18=*p19
      =*p20=*p21=*p22=*p23=*p24=*p25=*p26=*p27=*p28=*p29;
}  
#ifdef __STDC__
void  d00_result_chk(D *p0 ,D *p1 ,D *p2 ,D *p3 ,D *p4 ,D *p5
                 ,D *p6 ,D *p7 ,D *p8 ,D *p9 ,D *p10,D *p11
                 ,D *p12,D *p13,D *p14,D *p15,D *p16,D *p17
                 ,D *p18,D *p19,D *p20,D *p21,D *p22,D *p23
                 ,D *p24,D *p25,D *p26,D *p27,D *p28,D *p29){
#else
void d00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
           D *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
           , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
           , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
      p29->d=0;
       *p0 =*p1 =*p2=*p3=*p4=*p5=*p6 =*p7=*p8=*p9
      =*p10=*p11=*p12=*p13=*p14=*p15=*p16=*p17=*p18=*p19
      =*p20=*p21=*p22=*p23=*p24=*p25=*p26=*p27=*p28=*p29;
}  

#ifdef __STDC__
void  x00_result_chk(X *p0 ,X *p1 ,X *p2 ,X *p3 ,X *p4 ,X *p5
                 ,X *p6 ,X *p7 ,X *p8 ,X *p9 ,X *p10,X *p11
                 ,X *p12,X *p13,X *p14,X *p15,X *p16,X *p17
                 ,X *p18,X *p19,X *p20,X *p21,X *p22,X *p23
                 ,X *p24,X *p25,X *p26,X *p27,X *p28,X *p29){
#else
void x00_result_chk(p0 ,p1 ,p2 ,p3 ,p4 ,p5 ,p6 ,p7 ,p8 ,p9
                  ,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19
                  ,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29) 
                X *p0 ,*p1 ,*p2 ,*p3 ,*p4 ,*p5 ,*p6 ,*p7 ,*p8 ,*p9
                , *p10,*p11,*p12,*p13,*p14,*p15,*p16,*p17,*p18,*p19
                , *p20,*p21,*p22,*p23,*p24,*p25,*p26,*p27,*p28,*p29;{
#endif
      p29->x=0;
       *p0 =*p1 =*p2=*p3=*p4=*p5=*p6 =*p7=*p8=*p9
      =*p10=*p11=*p12=*p13=*p14=*p15=*p16=*p17=*p18=*p19
      =*p20=*p21=*p22=*p23=*p24=*p25=*p26=*p27=*p28=*p29;
}
