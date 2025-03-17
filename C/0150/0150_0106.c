#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 struct tag1  { unsigned  char  t01;
                 signed    char  t02;
                 unsigned  char  t03;   } ;
 
 struct tag2  { unsigned  char  t01;
                 struct tag1     str1;  };
 
 struct tag3  { signed    char  t01;
                 struct tag2     str2;  };
 
 struct tag4  { unsigned  int   t01;
                 signed    int   t02;
                 unsigned  int   t03;   } ;
 
 struct tag5  { unsigned  int   t01;
                 struct tag4     str3;  };
 
 struct tag6  { signed    int   t01;
                 struct tag5     str4;  };
 
 struct tag7  { float           f01;
                 double          d02;
                 float           f03;   } ;
 
 struct tag8  { float           f01;
                 struct tag7     str7;  };
 
 struct tag9  { double          d01;
                 struct tag8     str8;  };
 
struct tag28 {unsigned  char  c01[3];
               struct    tag1    str1;
               signed    char  c03[2]; } ;
 
struct tag37 {unsigned  char  c01[3];
               struct    tag3    str3;
               signed    char  c03[2]; } ;
 
struct tag46 {unsigned  char  c01[3];
               signed    char  c02[2];
               signed    char  c03[2]; };
 
 struct tag31 { unsigned  int   i01[3];
                 struct    tag4    str1;
                 signed    int   i03[2]; } ;
 
 struct tag40 { unsigned  int   i01[3];
                struct    tag6    str1;
                 signed    int   i03[2]; } ;
 
 struct tag49 { unsigned  int   i01[3];
                 unsigned  int   i02[2];
                 signed    int   i03[2]; } ;
 
 struct tag34 { float           f01[3];
                 struct    tag7    str1;
                 double          d03[2]; } ;
 
 struct tag43 { float           f01[3];
                struct    tag9    str1;
                 double          d03[2]; } ;
 
 struct tag52 { float           f01[3];
                 double          d02[2];
                 signed    int   i03[2]; } ;
int main()
{
 
 struct tag28 st28={255,255,255,255,-128,255,-128,-128};
 
 struct tag28 st29={{255,255,255},{{255}},{{-128}}};
 
 struct tag28 st30={{{255}}};
 
 struct tag31 st31= {4294967295,4294967295,4294967295,4294967295,
 -2147483648,4294967295,-2147483648,-2147483648};
 
 struct tag31 st32={{4294967295,4294967295,4294967295},
 {{4294967295}},{{-2147483648}}};
 
 struct tag31 st33={{{4294967295}}};
 
 struct tag34 st34={1.0e+20f,2.0e+20f,3.0e+20f,4.0e+20f,5.0e+20f,
 6.0e+20f,7.0e+20f,8.0e+20f} ;
 
 struct tag34 st35={{1.0e+20f,2.0e+20f,3.0e+20f},{{1.0e+20f}},
 {{3.0e+20f}}};
 
 struct tag34 st36={{{1.0e+20f}}};
 
 struct tag37 st37=
 {255,255,255,-128,255,255,-128,255,-128,-128};
 
 struct tag37 st38=
 {{255,255,255},{{-128},{255,{255,-128}}},{{-128}}};
 
 struct tag37 st39={{{255}}};
 
 struct tag40 st40=
 {4294967295,4294967295,4294967295,-2147483648,4294967295,4294967295
 ,-2147483648,4294967295,-2147483648,-2147483648};
 
 struct tag40 st41=
 {{4294967295,4294967295,4294967295},{{-2147483648},
  {4294967295,{4294967295,-2147483648}}},{{-2147483648}}};
 
 struct tag40 st42=
 {{{4294967295}}};
 
 struct tag43 st43=
 {1.0e+20f,2.0e+20f,3.0e+20f,4.0e+20f ,5.0e+20f,6.0e+20f
 ,7.0e+20f,8.0e+20f,9.0e+20f,1.0e+20f};
 
 struct tag43 st44=
 {{1.0e+20f,2.0e+20f,3.0e+20f},{{4.0e+20f},
  {5.0e+20f,{6.0e+20f,7.0e+20f}}},{{8.0e+20f}}};
 
 struct tag43 st45=
 {{{1.0e+20f}}};
 
 struct tag46 st46=
 {255,255,255,-128,-128,-128,-128};
 
 struct tag46 st47=
 {{255,255,255},{-128,-128},{-128,-128}};
 
 struct tag46 st48=
 {{{255}},{{-128}},{{-128}}};
 
 struct tag49 st49=
 {4294967295,4294967295,4294967295,4294967295,4294967295,
   -2147483648,-2147483648};
 
 struct tag49 st50=
 {{4294967295,4294967295,4294967295},{4294967295,4294967295},
   {-2147483648,-2147483648}};
 
 struct tag49 st51=
 {{{4294967295}},{{4294967295}},{{-2147483648}}};
 
 struct tag52 st52=
 {1.0e+20f,2.0e+20f,3.0e+20f,4.0e+20f,5.0e+20f,
   -2147483648,-2147483648};
 
 struct tag52 st53=
 {{1.0e+20f,2.0e+20f,3.0e+20f},{4.0e+20f,5.0e+20f},
   {-2147483648,-2147483648}};
 
 struct tag52 st54=
 {{{1.0e+20f}},{{2.0e+20f}},{{-2147483648}}};
 
   printf("***  ** MK3 TEST ** STARTED ***\n");
 
   if((st28.c01[0]==255)&&(st28.c01[1]==255)&&(st28.c01[2]==255)
      &&(st28.str1.t01==255)
      &&(st28.str1.t02==-128)
      &&(st28.str1.t03==255)&&
      (st28.c03[0]==-128)&&(st28.c03[1]==-128))
   printf("***  - 01 ** OK ***\n");
   else
   printf("***  - 01 ** NG ***\n");
 
   if((st29.c01[0]==255)&&(st29.c01[1]==255)&&(st29.c01[2]==255)
      &&(st29.str1.t01==255)&&
      (st29.c03[0]==-128))
   printf("***  - 02 ** OK ***\n");
   else
   printf("***  - 02 ** NG ***\n");
 
   if(st30.c01[0]==255)
   printf("***  - 03 ** OK ***\n");
   else
   printf("***  - 03 ** NG ***\n");
 
   if((st31.i01[0]==4294967295) &&
      (st31.i01[1]==4294967295) &&
      (st31.i01[2]==4294967295) &&
      (st31.str1.t01==4294967295) &&
      (st31.str1.t02==-2147483648) &&
      (st31.str1.t03==4294967295) &&
      (st31.i03[0]==-2147483648) &&(st31.i03[1]==-2147483648))
   printf("***  - 04 ** OK ***\n");
   else
   printf("***  - 04 ** NG ***\n");
 
   if((st32.i01[0]==4294967295) &&
      (st32.i01[1]==4294967295) &&
      (st32.i01[2]==4294967295) &&
      (st32.str1.t01==4294967295) &&
      (st32.i03[0]==-2147483648) )
   printf("***  - 05 ** OK ***\n");
   else
   printf("***  - 05 ** NG ***\n");
 
   if((st33.i01[0]==4294967295))
   printf("***  - 06 ** OK ***\n");
   else
   printf("***  - 06 ** NG ***\n");
 
   if((st34.f01[0]==1.0e+20f) &&
      (st34.f01[1]==2.0e+20f) &&
      (st34.f01[2]==3.0e+20f) &&
      (st34.str1.f01==4.0e+20f) &&
      (st34.str1.d02==5.0e+20f) &&
      (st34.str1.f03==6.0e+20f) &&
      (st34.d03[0]==7.0e+20f) &&(st34.d03[1]==8.0e+20f))
   printf("***  - 07 ** OK ***\n");
   else
   printf("***  - 07 ** NG ***\n");
 
   if((st35.f01[0]==1.0e+20f) &&
      (st35.f01[1]==2.0e+20f) &&
      (st35.f01[2]==3.0e+20f) &&
      (st35.str1.f01==1.0e+20f) &&
      (st35.d03[0]==3.0e+20f) )
   printf("***  - 08 ** OK ***\n");
   else
   printf("***  - 08 ** NG ***\n");
 
   if((st36.f01[0]==1.0e+20f))
   printf("***  - 09 ** OK ***\n");
   else
   printf("***  - 09 ** NG ***\n");
 
   if((st37.c01[0]==255) &&
      (st37.c01[1]==255) &&
      (st37.c01[2]==255) &&
      (st37.str3.t01==-128) &&
      (st37.str3.str2.t01==255) &&
      (st37.str3.str2.str1.t01==255) &&
      (st37.str3.str2.str1.t02==-128) &&
      (st37.str3.str2.str1.t03==255) &&
      (st37.c03[0]==-128) &&(st37.c03[1]==-128))
   printf("***  - 10 ** OK ***\n");
   else
   printf("***  - 10 ** NG ***\n");
 
   if((st38.c01[0]==255) &&
      (st38.c01[1]==255) &&
      (st38.c01[2]==255) &&
      (st38.str3.t01==-128) &&
      (st38.str3.str2.t01==255) &&
      (st38.str3.str2.str1.t01==255) &&
      (st38.str3.str2.str1.t02==-128) &&
      (st38.c03[0]==-128))
   printf("***  - 11 ** OK ***\n");
   else
   printf("***  - 11 ** NG ***\n");
 
   if((st39.c01[0]==255))
   printf("***  - 12 ** OK ***\n");
   else
   printf("***  - 12 ** NG ***\n");
 
   if((st40.i01[0]==4294967295) &&
      (st40.i01[1]==4294967295) &&
      (st40.i01[2]==4294967295) &&
      (st40.str1.t01==-2147483648) &&
      (st40.str1.str4.t01==4294967295) &&
      (st40.str1.str4.str3.t01==4294967295) &&
      (st40.str1.str4.str3.t02==-2147483648) &&
      (st40.str1.str4.str3.t03==4294967295) &&
      (st40.i03[0]==-2147483648) &&(st40.i03[1]==-2147483648))
   printf("***  - 13 ** OK ***\n");
   else
   printf("***  - 13 ** NG ***\n");
 
   if((st41.i01[0]==4294967295) &&
      (st41.i01[1]==4294967295) &&
      (st41.i01[2]==4294967295) &&
      (st41.str1.t01==-2147483648) &&
      (st41.str1.str4.t01==4294967295) &&
      (st41.str1.str4.str3.t01==4294967295) &&
      (st41.str1.str4.str3.t02==-2147483648) &&
      (st41.i03[0]==-2147483648))
   printf("***  - 14 ** OK ***\n");
   else
   printf("***  - 14 ** NG ***\n");
 
   if((st42.i01[0]==4294967295))
   printf("***  - 15 ** OK ***\n");
   else
   printf("***  - 15 ** NG ***\n");
 
   if((st43.f01[0]==1.0e+20f) &&
      (st43.f01[1]==2.0e+20f) &&
      (st43.f01[2]==3.0e+20f) &&
      (st43.str1.d01==4.0e+20f) &&
      (st43.str1.str8.f01==5.0e+20f) &&
      (st43.str1.str8.str7.f01==6.0e+20f) &&
      (st43.str1.str8.str7.d02==7.0e+20f) &&
      (st43.str1.str8.str7.f03==8.0e+20f) &&
      (st43.d03[0]==9.0e+20f) &&(st43.d03[1]==1.0e+20f))
   printf("***  - 16 ** OK ***\n");
   else
   printf("***  - 16 ** NG ***\n");
 
   if((st44.f01[0]==1.0e+20f) &&
      (st44.f01[1]==2.0e+20f) &&
      (st44.f01[2]==3.0e+20f) &&
      (st44.str1.d01==4.0e+20f) &&
      (st44.str1.str8.f01==5.0e+20f) &&
      (st44.str1.str8.str7.f01==6.0e+20f) &&
      (st44.str1.str8.str7.d02==7.0e+20f) &&
      (st44.d03[0]==8.0e+20f))
   printf("***  - 17 ** OK ***\n");
   else
   printf("***  - 17 ** NG ***\n");
 
   if((st45.f01[0]==1.0e+20f))
   printf("***  - 18 ** OK ***\n");
   else
   printf("***  - 18 ** NG ***\n");
 
   if((st46.c01[0]==255) &&
      (st46.c01[1]==255) &&
      (st46.c01[2]==255) &&
      (st46.c02[0]==-128) &&
      (st46.c02[1]==-128) &&
      (st46.c03[0]==-128) &&
      (st46.c03[1]==-128) )
   printf("***  - 19 ** OK ***\n");
   else
   printf("***  - 19 ** NG ***\n");
 
   if((st47.c01[0]==255) &&
      (st47.c01[1]==255) &&
      (st47.c01[2]==255) &&
      (st47.c02[0]==-128) &&
      (st47.c02[1]==-128) &&
      (st47.c03[0]==-128) &&
      (st47.c03[1]==-128) )
   printf("***  - 20 ** OK ***\n");
   else
   printf("***  - 20 ** NG ***\n");
 
   if((st48.c01[0]==255) &&
      (st48.c02[0]==-128) &&
      (st48.c03[0]==-128))
   printf("***  - 21 ** OK ***\n");
   else
   printf("***  - 21 ** NG ***\n");
 
   if((st49.i01[0]==4294967295) &&
      (st49.i01[1]==4294967295) &&
      (st49.i01[2]==4294967295) &&
      (st49.i02[0]==4294967295) &&
      (st49.i02[1]==4294967295) &&
      (st49.i03[0]==-2147483648) &&
      (st49.i03[1]==-2147483648) )
   printf("***  - 22 ** OK ***\n");
   else
   printf("***  - 22 ** NG ***\n");
 
   if((st50.i01[0]==4294967295) &&
      (st50.i01[1]==4294967295) &&
      (st50.i01[2]==4294967295) &&
      (st50.i02[0]==4294967295) &&
      (st50.i02[1]==4294967295) &&
      (st50.i03[0]==-2147483648) &&
      (st50.i03[1]==-2147483648) )
   printf("***  - 23 ** OK ***\n");
   else
   printf("***  - 23 ** NG ***\n");
 
   if((st51.i01[0]==4294967295) &&
      (st51.i02[0]==4294967295) &&
      (st51.i03[0]==-2147483648))
   printf("***  - 24 ** OK ***\n");
   else
   printf("***  - 24 ** NG ***\n");
 
   if((st52.f01[0]==1.0e+20f) &&
      (st52.f01[1]==2.0e+20f) &&
      (st52.f01[2]==3.0e+20f) &&
      (st52.d02[0]==4.0e+20f) &&
      (st52.d02[1]==5.0e+20f) &&
      (st52.i03[0]==-2147483648) &&
      (st52.i03[1]==-2147483648) )
   printf("***  - 25 ** OK ***\n");
   else
   printf("***  - 25 ** NG ***\n");
 
   if((st53.f01[0]==1.0e+20f) &&
      (st53.f01[1]==2.0e+20f) &&
      (st53.f01[2]==3.0e+20f) &&
      (st53.d02[0]==4.0e+20f) &&
      (st53.d02[1]==5.0e+20f) &&
      (st53.i03[0]==-2147483648) &&
      (st53.i03[1]==-2147483648) )
   printf("***  - 26 ** OK ***\n");
   else
   printf("***  - 26 ** NG ***\n");
 
   if((st54.f01[0]==1.0e+20f) &&
      (st54.d02[0]==2.0e+20f) &&
      (st54.i03[0]==-2147483648))
   printf("***  - 27 ** OK ***\n");
   else
   printf("***  - 27 ** NG ***\n");
 
 
 
   printf("***  TEST ENDED ***\n");
exit (0);
}
