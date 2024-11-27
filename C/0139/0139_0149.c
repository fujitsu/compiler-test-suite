#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

int main()
{
     int ans1                                                 ;

     static struct tag1{
             int   a1, a2, a3, a4, a5, a6, a7, a8, a9, a10    ;
             int   b1, b2, b3, b4, b5, b6, b7, b8, b9, b10    ;
             int   c1, c2, c3, c4, c5, c6, c7, c8, c9, c10    ;
             int   d1, d2, d3, d4, d5, d6, d7, d8, d9, d10    ;
             int   e1, e2, e3, e4, e5, e6, e7, e8, e9, e10    ;
             int   f1, f2, f3, f4, f5, f6, f7, f8, f9, f10    ;
             int   g1, g2, g3, g4, g5, g6, g7, g8, g9, g10    ;
             int   h1, h2, h3, h4, h5, h6, h7, h8, h9, h10    ;
             int   i1, i2, i3, i4, i5, i6, i7, i8, i9, i10    ;
             int   j1, j2, j3, j4, j5, j6, j7, j8, j9, j10    ;
             int   k1, k2, k3, k4, k5, k6, k7, k8, k9, k10    ;
             int   l1, l2, l3, l4, l5, l6, l7, l8, l9, l10    ;
             int   m1, m2, m3, m4, m5, m6, m7                 ;
                   } pp = { 1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7,8,9,10,
                              1,2,3,4,5,6,7          };


    union tag2 {
                    char         a1[2];
                    char        *a2     ;
                    int          a3     ;
                    int         *a4     ;
                    long int     a5     ;
                    long int    *a6     ;
                    float        a7     ;
                    float       *a8     ;
                    double       a9     ;
                    double      *a10    ;
                    char         a11    ;
                    char        *a12    ;
                    int          a13    ;
                    int         *a14    ;
                    long int     a15    ;
                    long int    *a16    ;
                    float        a17    ;
                    float       *a18    ;
                    double       a19    ;
                    double      *a20    ;
                    char         a21    ;
                    char        *a22    ;
                    int          a23    ;
                    int         *a24    ;
                    long int     a25    ;
                    long int    *a26    ;
                    float        a27    ;
                    float       *a28    ;
                    double       a29    ;
                    double      *a30    ;
                    char         a31    ;
                    char        *a32    ;
                    int          a33    ;
                    int         *a34    ;
                    long int     a35    ;
                    long int    *a36    ;
                    float        a37    ;
                    float       *a38    ;
                    double       a39    ;
                    double      *a40    ;
                    char         a41    ;
                    char        *a42    ;
                    int          a43    ;
                    int         *a44    ;
                    long int     a45    ;
                    long int    *a46    ;
                    float        a47    ;
                    float       *a48    ;
                    double       a49    ;
                    double      *a50    ;
                    char         a51    ;
                    char        *a52    ;
                    int          a53    ;
                    int         *a54    ;
                    long int     a55    ;
                    long int    *a56    ;
                    float        a57    ;
                    float       *a58    ;
                    double       a59    ;
                    double      *a60    ;
                    char         a61    ;
                    char        *a62    ;
                    int          a63    ;
                    int         *a64    ;
                    long int     a65    ;
                    long int    *a66    ;
                    float        a67    ;
                    float       *a68    ;
                    double       a69    ;
                    double      *a70    ;
                    char         a71    ;
                    char        *a72    ;
                    int          a73    ;
                    int         *a74    ;
                    long int     a75    ;
                    long int    *a76    ;
                    float        a77    ;
                    float       *a78    ;
                    double       a79    ;
                    double      *a80    ;
                    char         a81    ;
                    char        *a82    ;
                    int          a83    ;
                    int         *a84    ;
                    long int     a85    ;
                    long int    *a86    ;
                    float        a87    ;
                    float       *a88    ;
                    double       a89    ;
                    double      *a90    ;
                    char         a91    ;
                    char        *a92    ;
                    int          a93    ;
                    int         *a94    ;
                    long int     a95    ;
                    long int    *a96    ;
                    float        a97    ;
                    float       *a98    ;
                    double       a99    ;
                    double      *a100   ;
                    char         a101   ;
                    char        *a102   ;
                    int          a103   ;
                    int         *a104   ;
                    long int     a105   ;
                    long int    *a106   ;
                    float        a107   ;
                    float       *a108   ;
                    double       a109   ;
                    double      *a110   ;
                    char         a111   ;
                    char        *a112   ;
                    int          a113   ;
                    int         *a114   ;
                    long int     a115   ;
                    long int    *a116   ;
                    float        a117   ;
                    float       *a118   ;
                    double       a119   ;
                    double      *a120   ;
                    char         a121   ;
                    char        *a122   ;
                    int          a123   ;
                    int         *a124   ;
                    long int     a125   ;
                    long int    *a126   ;
                    struct   {  char b1;
                                 int  b2;
                             }  a127   ;
               } un                    ;


   enum intgr {  in1  , in2  , in3  , in4  , in5  ,
                  in6  , in7  , in8  , in9  , in10=10,
                  in11 , in12 , in13 , in14 , in15 ,
                  in16 , in17 , in18 , in19 , in20 ,
                  in21 , in22 , in23 , in24 , in25 ,
                  in26 , in27 , in28 , in29 , in30 ,
                  in31 , in32 , in33 , in34 , in35 ,
                  in36 , in37 , in38 , in39 , in40 ,
                  in41 , in42 , in43 , in44 , in45 ,
                  in46 , in47 , in48 , in49 , in50 ,
                  in51 , in52 , in53 , in54 , in55 ,
                  in56 , in57 , in58 , in59 , in60 ,
                  in61 , in62 , in63 , in64 , in65 ,
                  in66 , in67 , in68 , in69 , in70 ,
                  in71 , in72 , in73 , in74 , in75 ,
                  in76 , in77 , in78 , in79 , in80 ,
                  in81 , in82 , in83 , in84 , in85 ,
                  in86 , in87 , in88 , in89 , in90 ,
                  in91 , in92 , in93 , in94 , in95 ,
                  in96 , in97 , in98 , in99 , in100,
                  in101, in102, in103, in104, in105,
                  in106, in107, in108, in109, in110,
                  in111, in112, in113, in114, in115,
                  in116, in117, in118, in119, in120,
                  in121, in122, in123, in124, in125,
                  in126, in127                      }         ;


        enum intgr   enu1, enu2, enu3       ;

     ans1 = pp.a1 + pp.b2 + pp.c3 + pp.d4 + pp.e5  +
            pp.f6 + pp.g7 + pp.h8 + pp.i9 + pp.j10 +
            pp.k1 + pp.l2 + pp.j3 + pp.f4 + pp.h5  +
            pp.m6 + pp.m7 + pp.a8 + pp.c9 + pp.d10   ;

   if (  ans1 == 110  )

           printf(" *** \n");
        else
           printf(" *** \n");

     un.a1[0] = 'a'   ;
     un.a1[1] = '\0'  ;


   if (  memcmp("a",un.a1,2) == 0 )
   {

        un.a127.b2 = 7  ;

        if ( un.a127.b2 == 7 )

           printf(" *** \n");
        else
           printf(" *** \n");

   }
   else
           printf(" *** \n");


        enu1 = in1                          ;
        enu2 = in50                         ;
        enu3 = in127                        ;


     if ( enu1==0  &&  enu2==50  &&  enu3==127 )


           printf(" *** \n");
        else
           printf(" *** \n");


exit (0);
}
