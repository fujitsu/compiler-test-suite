#include  <stdio.h>

#if INT64
#define int __int32
#endif

 union  tag1  { unsigned  char  t01;
                 signed    char  t02;
                 unsigned  char  t03;   } ;

 union  tag2  { unsigned  char  t01;
                 union  tag1     str1;  };

 union  tag3  { signed    char  t01;
                 union  tag2     str2;  };

 union  tag4  { unsigned  int   t01;
                 signed    int   t02;
                 unsigned  int   t03;   } ;

 union  tag5  { unsigned  int   t01;
                 union  tag4     str3;  };

 union  tag6  { signed    int   t01;
                 union  tag5     str4;  };

 union  tag7  { double          d01;
                 float           f02;
                 float           f03;   } ;

 union  tag8  { double          d01;
                 union  tag7     str7;  };

 union  tag9  { double          d01;
                 union  tag8     str8;  };

union  tag28 {unsigned  char  c01[3];
               union     tag1    str1;
               signed    char  c03[2]; } ;

union  tag37 {unsigned  char  c01[3];
               union     tag3    str3;
               signed    char  c03[2]; } ;

union  tag46 {unsigned  char  c01[3];
               signed    char  c02[2];
               signed    char  c03[2]; };

 union  tag31 { unsigned  int   i01[3];
                 union     tag4    str1;
                 signed    int   i03[2]; } ;

 union  tag40 { unsigned  int   i01[3];
                union     tag6    str1;
                 signed    int   i03[2]; } ;

 union  tag49 { unsigned  int   i01[3];
                 unsigned  int   i02[2];
                 signed    int   i03[2]; } ;

 union  tag34 { double          d01[3];
                 union     tag7    str1;
                 double          d03[2]; } ;

 union  tag43 { double          d01[3];
                union     tag9    str1;
                 double          d03[2]; } ;

 union  tag52 { double          d01[3];
                 float           f02[2];
                 signed    int   i03[2]; } ;
int main()
{

 union  tag28 st28={255,255,255};

 union  tag28 st29={{255,255,255}};

 union  tag28 st30={{{255}}};

 union  tag31 st31= {4294967295,4294967295,4294967295};

 union  tag31 st32={{4294967295,4294967295,4294967295}};

 union  tag31 st33={{{4294967295}}};

 union  tag34 st34={1.0e+20,2.0e+20,3.0e+20};

 union  tag34 st35={{1.0e+20,2.0e+20,3.0e+20}};

 union  tag34 st36={{{1.0e+20}}};

 union  tag37 st37=
 {255,255,255};

 union  tag37 st38=
 {{255,255,255}};

 union  tag37 st39={{{255}}};

 union  tag40 st40=
 {4294967295,4294967295,4294967295};

 union  tag40 st41=
 {{4294967295,4294967295,4294967295}};

 union  tag40 st42=
 {{{4294967295}}};

 union  tag43 st43=
 {1.0e+20,2.0e+20,3.0e+20};

 union  tag43 st44=
 {{1.0e+20,2.0e+20,3.0e+20}};

 union  tag43 st45=
 {{{1.0e+20}}};

 union  tag46 st46=
 {255,255,255};

 union  tag46 st47=
 {{255,255,255}};

 union  tag46 st48=
 {{{255}}};

 union  tag49 st49=
 {4294967295,4294967295,4294967295};

 union  tag49 st50=
 {{4294967295,4294967295,4294967295}};

 union  tag49 st51=
 {{{4294967295}}};

 union  tag52 st52=
 {0.0e+20,1.0e+20,2.0e+20};

 union  tag52 st53=
 {{0.0e+20,1.0e+20,2.0e+20}};

 union  tag52 st54=
 {{{0.0e+20}}};

   printf("*** M3GUNI02 ** MK3 TEST ** STARTED ***\n");

   if((st28.c01[0]==255)&&(st28.c01[1]==255)&&(st28.c01[2]==255)
      &&(st28.str1.t01==255)
      &&(st28.str1.t02==-1)
      &&(st28.str1.t03==255)&&
      (st28.c03[0]==-1)&&(st28.c03[1]==-1))
   printf("*** M3GUNI02 - 01 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 01 ** NG ***\n");

   if((st29.c01[0]==255)&&(st29.c01[1]==255)&&(st29.c01[2]==255)
      &&(st29.str1.t01==255)
      &&(st29.str1.t02==-1)
      &&(st29.str1.t03==255)&&
      (st28.c03[0]==-1)&&(st28.c03[1]==-1))
   printf("*** M3GUNI02 - 02 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 02 ** NG ***\n");

   if((st30.c01[0]==255)&&
      (st30.c03[0]==-1))
   printf("*** M3GUNI02 - 03 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 03 ** NG ***\n");

   if((st31.i01[0]==4294967295) &&
      (st31.i01[1]==4294967295) &&
      (st31.i01[2]==4294967295) &&
      (st31.str1.t01==4294967295) &&
      (st31.str1.t02==-1) &&
      (st31.str1.t03==4294967295) &&
      (st31.i03[0]==-1) &&(st31.i03[1]==-1))
   printf("*** M3GUNI02 - 04 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 04 ** NG ***\n");

   if((st32.i01[0]==4294967295) &&
      (st32.i01[1]==4294967295) &&
      (st32.i01[2]==4294967295) &&
      (st32.str1.t01==4294967295) &&
      (st32.i03[0]==-1) )
   printf("*** M3GUNI02 - 05 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 05 ** NG ***\n");

   if((st33.i01[0]==4294967295)&&
      (st33.i03[0]==-1))
   printf("*** M3GUNI02 - 06 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 06 ** NG ***\n");

   if((st34.d01[0]==1.0e+20) &&
      (st34.d01[1]==2.0e+20) &&
      (st34.d01[2]==3.0e+20) &&
      (st34.str1.d01==1.0e+20) &&
      (st34.d03[0]==1.0e+20) &&(st34.d03[1]==2.0e+20))
   printf("*** M3GUNI02 - 07 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 07 ** NG ***\n");

   if((st35.d01[0]==1.0e+20) &&
      (st35.d01[1]==2.0e+20) &&
      (st35.d01[2]==3.0e+20) &&
      (st35.str1.d01==1.0e+20) &&
      (st35.d03[0]==1.0e+20) )
   printf("*** M3GUNI02 - 08 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 08 ** NG ***\n");

   if((st36.d01[0]==1.0e+20) &&
      (st36.str1.d01==1.0e+20) &&
      (st36.d03[0]==1.0e+20))
   printf("*** M3GUNI02 - 09 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 09 ** NG ***\n");

   if((st37.c01[0]==255) &&
      (st37.c01[1]==255) &&
      (st37.c01[2]==255) &&
      (st37.str3.t01==-1) &&
      (st37.str3.str2.t01==255) &&
      (st37.str3.str2.str1.t01==255) &&
      (st37.c03[0]==-1) &&(st37.c03[1]==-1))
   printf("*** M3GUNI02 - 10 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 10 ** NG ***\n");

   if((st38.c01[0]==255) &&
      (st38.c01[1]==255) &&
      (st38.c01[2]==255) &&
      (st38.str3.t01==-1) &&
      (st38.str3.str2.t01==255) &&
      (st38.str3.str2.str1.t01==255) &&
      (st38.c03[0]==-1)&&(st38.c03[1]==-1))
   printf("*** M3GUNI02 - 11 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 11 ** NG ***\n");

   if((st39.c01[0]==255)&&
      (st39.str3.t01==-1)&&
      (st39.c03[0]==-1))
   printf("*** M3GUNI02 - 12 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 12 ** NG ***\n");

   if((st40.i01[0]==4294967295) &&
      (st40.i01[1]==4294967295) &&
      (st40.i01[2]==4294967295) &&
      (st40.str1.t01==-1) &&
      (st40.str1.str4.t01==4294967295) &&
      (st40.str1.str4.str3.t01==4294967295) &&
      (st40.i03[0]==-1) &&(st40.i03[1]==-1))
   printf("*** M3GUNI02 - 13 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 13 ** NG ***\n");

   if((st41.i01[0]==4294967295) &&
      (st41.i01[1]==4294967295) &&
      (st41.i01[2]==4294967295) &&
      (st41.str1.t01==-1) &&
      (st41.str1.str4.t01==4294967295) &&
      (st41.str1.str4.str3.t01==4294967295) &&
      (st41.i03[0]==-1))
   printf("*** M3GUNI02 - 14 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 14 ** NG ***\n");

   if((st42.i01[0]==4294967295)&&
      (st42.str1.t01==-1)&&
      (st42.i03[0]==-1))
   printf("*** M3GUNI02 - 15 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 15 ** NG ***\n");

   if((st43.d01[0]==1.0e+20) &&
      (st43.d01[1]==2.0e+20) &&
      (st43.d01[2]==3.0e+20) &&
      (st43.str1.d01==1.0e+20) &&
      (st43.str1.str8.d01==1.0e+20) &&
      (st43.str1.str8.str7.d01==1.0e+20) &&
      (st43.d03[0]==1.0e+20) &&(st43.d03[1]==2.0e+20))
   printf("*** M3GUNI02 - 16 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 16 ** NG ***\n");

   if((st44.d01[0]==1.0e+20) &&
      (st44.d01[1]==2.0e+20) &&
      (st44.d01[2]==3.0e+20) &&
      (st44.str1.d01==1.0e+20) &&
      (st44.str1.str8.d01==1.0e+20) &&
      (st44.str1.str8.str7.d01==1.0e+20) &&
      (st44.d03[0]==1.0e+20))
   printf("*** M3GUNI02 - 17 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 17 ** NG ***\n");

   if((st45.d01[0]==1.0e+20)&&
      (st45.str1.d01==1.0e+20)&&
      (st45.d03[0]==1.0e+20))
   printf("*** M3GUNI02 - 18 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 18 ** NG ***\n");

   if((st46.c01[0]==255) &&
      (st46.c01[1]==255) &&
      (st46.c01[2]==255) &&
      (st46.c02[0]==-1) &&
      (st46.c02[1]==-1) &&
      (st46.c03[0]==-1) &&
      (st46.c03[1]==-1) )
   printf("*** M3GUNI02 - 19 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 19 ** NG ***\n");

   if((st47.c01[0]==255) &&
      (st47.c01[1]==255) &&
      (st47.c01[2]==255) &&
      (st47.c02[0]==-1) &&
      (st47.c02[1]==-1) &&
      (st47.c03[0]==-1) &&
      (st47.c03[1]==-1) )
   printf("*** M3GUNI02 - 20 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 20 ** NG ***\n");

   if((st48.c01[0]==255) &&
      (st48.c02[0]==-1) &&
      (st48.c03[0]==-1))
   printf("*** M3GUNI02 - 21 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 21 ** NG ***\n");

   if((st49.i01[0]==4294967295) &&
      (st49.i01[1]==4294967295) &&
      (st49.i01[2]==4294967295) &&
      (st49.i02[0]==4294967295) &&
      (st49.i02[1]==4294967295) &&
      (st49.i03[0]==-1) &&
      (st49.i03[1]==-1) )
   printf("*** M3GUNI02 - 22 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 22 ** NG ***\n");

   if((st50.i01[0]==4294967295) &&
      (st50.i01[1]==4294967295) &&
      (st50.i01[2]==4294967295) &&
      (st50.i02[0]==4294967295) &&
      (st50.i02[1]==4294967295) &&
      (st50.i03[0]==-1) &&
      (st50.i03[1]==-1) )
   printf("*** M3GUNI02 - 23 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 23 ** NG ***\n");

   if((st51.i01[0]==4294967295) &&
      (st51.i02[0]==4294967295) &&
      (st51.i03[0]==-1))
   printf("*** M3GUNI02 - 24 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 24 ** NG ***\n");

   if((st52.d01[0]==0.0e+20) &&
      (st52.d01[1]==1.0e+20) &&
      (st52.d01[2]==2.0e+20) &&
      (st52.f02[0]==0.0e+20) &&
      (st52.f02[1]==0.0e+20) &&
      (st52.i03[0]==0))
   printf("*** M3GUNI02 - 25 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 25 ** NG ***\n");

   if((st53.d01[0]==0.0e+20) &&
      (st53.d01[1]==1.0e+20) &&
      (st53.d01[2]==2.0e+20) &&
      (st53.f02[0]==0.0e+20) &&
      (st53.f02[1]==0.0e+20) &&
      (st53.i03[0]==0))
   printf("*** M3GUNI02 - 26 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 26 ** NG ***\n");

   if((st54.d01[0]==0.0e+20) &&
      (st54.f02[0]==0.0e+20) &&
      (st54.i03[0]==0))
   printf("*** M3GUNI02 - 27 ** OK ***\n");
   else
   printf("*** M3GUNI02 - 27 ** NG ***\n");

   printf("*** M3GUNI02 TEST ENDED ***\n");
}
