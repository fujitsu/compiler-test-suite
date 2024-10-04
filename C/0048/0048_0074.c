#include <stdio.h>
int main()
{
       int                      in1,  in2                             ;
       char                     ch1,  ch2,  ch3,  ch4,  ch5,  ch6     ;
       short int                si1,  si2,  si3,  si4,  si5,  si6     ;
       long  int                li1,  li2                             ;
       long long int            ll1,  ll2                             ;
       float                    fl1,  fl2,  fl3,  fl4,  fl5,  fl6     ;
       double                   db1,  db2,  db3,  db4,  db5,  db6     ;
       long double              ld1,  ld2,  ld3,  ld4,  ld5,  ld6     ;

       signed int               sin1, sin2,  sin3, sin4,  sin5,  sin6  ;
       signed char              sch1, sch2,  sch3, sch4,  sch5,  sch6  ;
       signed short int         ssi1, ssi2,  ssi3, ssi4,  ssi5,  ssi6  ;
       signed long  int         sli1, sli2,  sli3, sli4,  sli5,  sli6  ;
       signed long long int     sll1, sll2,  sll3, sll4,  sll5,  sll6  ;
              float             sfl1, sfl2,  sfl3, sfl4,  sfl5,  sfl6  ;
              double            sdb1, sdb2,  sdb3, sdb4,  sdb5,  sdb6  ;
              long  double      sld1, sld2,  sld3, sld4,  sld5,  sld6  ;

       unsigned int             uin1, uin2,  uin3, uin4,  uin5,  uin6  ;
       unsigned char            uch1, uch2,  uch3, uch4,  uch5,  uch6  ;
       unsigned short int       usi1, usi2,  usi3, usi4,  usi5,  usi6  ;
       unsigned long  int       uli1, uli2,  uli3, uli4,  uli5,  uli6  ;
       unsigned long long int   ull1, ull2,  ull3, ull4,  ull5,  ull6  ;
                float           ufl1, ufl2,  ufl3, ufl4,  ufl5,  ufl6  ;
                double          udb1, udb2,  udb3, udb4,  udb5,  udb6  ;
                long  double    uld1, uld2,  uld3, uld4,  uld5,  uld6  ;





       in1 = -2200000000 -  800000000  ;
       in2 = -3000000000               ;


       if ( in1 != in2 )

            printf(" ***  TEST-25 NG -INT    ***\n");

       else

            printf(" ***  TEST-25 OK -INT    ***\n");



       ch1 =  -100    ;
       ch2 =  50 - 150;
       ch3 =  -1      ;
       ch4 =  0  - 1  ;
       ch5 =  -100    ;
       ch6 =  -50 - 50;


       if ( ch2 != ch1 )

            printf(" ***  TEST-26 NG -CHAR   ***\n");

       else if ( ch3 != ch4 )

            printf(" ***  TEST-26 NG -CHAR   ***\n");

       else if ( ch5 != ch6 )

            printf(" ***  TEST-26 NG -CHAR   ***\n");

       else

            printf(" ***  TEST-26 OK -CHAR   ***\n");




       si1 =-38000         ;
       si2 =-28000 - 10000 ;
       si3 =-32769         ;
       si4 =-32768 - 1    ;
       si5 =-40000         ;
       si6 =-35000 - 5000  ;


       if ( si2 != si1 )

            printf(" ***  TEST-27 NG -SH.IN  ***\n");

       else if ( si3 != si4 )

            printf(" ***  TEST-27 NG -SH.IN  ***\n");

       else if ( si5 != si6 )

            printf(" ***  TEST-27 NG -SH.IN  ***\n");

       else

            printf(" ***  TEST-27 OK -SH.IN  ***\n");



       li1 = -3000000000              ;
       li2 = -2500000000 -  500000000 ;


       if ( li1 != li2 )

            printf(" ***  TEST-28 NG -LO.IN  ***\n");

       else

            printf(" ***  TEST-28 OK -LO.IN  ***\n");


       ll1 = -9500000000000000000LL                        ;
       ll2 = -9300000000000000000LL - 200000000000000000LL ;


       if ( ll1 != ll2 )

            printf(" ***  TEST-29 NG -LL,IN  ***\n");

       else

            printf(" ***  TEST-29 OK -LL.IN  ***\n");

       sin1 = -2200000000 -  800000000  ;
       sin2 = -3000000000               ;


       if ( sin1 != sin2 )

            printf(" ***  TEST-33 NG -S.INT  ***\n");

       else

            printf(" ***  TEST-33 OK -S.INT  ***\n");



       sch1 = -300      ;
       sch2 = -100 - 200;
       sch3 = -128      ;
       sch4 = -127 - 1  ;
       sch5 = -400      ;
       sch6 = -300 - 100;


       if ( sch2 != sch1 )

            printf(" ***  TEST-34 NG -S.CHAR ***\n");

       else if ( sch3 != sch4 )

            printf(" ***  TEST-34 NG -S.CHAR ***\n");

       else if ( sch5 != sch6 )

            printf(" ***  TEST-34 NG -S.CHAR ***\n");

       else

            printf(" ***  TEST-34 OK -S.CHAR ***\n");



       ssi1 = -38000         ;
       ssi2 = -28000 - 10000 ;
       ssi3 = -32769         ;
       ssi4 = -32768 - 1     ;
       ssi5 = -40000         ;
       ssi6 = -35000 - 5000  ;


       if ( ssi2 != ssi1 )

            printf(" ***  TEST-35 NG -S.SH.IN ***\n");

       else if ( ssi3 != ssi4 )

            printf(" ***  TEST-35 NG -S.SH.IN ***\n");

       else if ( ssi5 != ssi6 )

            printf(" ***  TEST-35 NG -S.SH.IN ***\n");

       else

            printf(" ***  TEST-35 OK -S.SH.IN ***\n");


       sli1 = -3000000000              ;
       sli2 = -2500000000 -  500000000 ;


       if ( sli1 != sli2 )

            printf(" ***  TEST-36 NG -S.LO.IN ***\n");

       else

            printf(" ***  TEST-36 OK -S.LO.IN ***\n");

       sll1 = -9500000000000000000LL                        ;
       sll2 = -9300000000000000000LL - 200000000000000000LL ;


       if ( sll1 != sll2 )

            printf(" ***  TEST-37 NG -S.LL,IN ***\n");

       else

            printf(" ***  TEST-37 OK -S.LL.IN ***\n");

       uin1 = -100                      ;
       uin2 =  0 - 100                  ;
       uin3 = -1                        ;
       uin4 =  0 - 1                    ;
       uin5 = -50 - 50                  ;
       uin6 = -100                      ;



       if ( uin1 != uin2 )

            printf(" ***  TEST-41 NG -U.INT  ***\n");

       else if ( uin3 != uin4 )

            printf(" ***  TEST-41 NG -U.INT  ***\n");

       else if ( uin5 != uin6 )

            printf(" ***  TEST-41 NG -U.INT  ***\n");

       else

            printf(" ***  TEST-41 OK -U.INT  ***\n");



       uch1 = -100     ;
       uch2 =  50 - 150;
       uch3 = -1       ;
       uch4 =  0 - 1   ;
       uch5 = -100     ;
       uch6 = -50 - 50 ;


       if ( uch1 != uch2 )

            printf(" ***  TEST-42 NG -U.CHAR ***\n");

       else if ( uch3 != uch4 )

            printf(" ***  TEST-42 NG -U.CHAR ***\n");

       else if ( uch5 != uch6 )

            printf(" ***  TEST-42 NG -U.CHAR ***\n");

       else

            printf(" ***  TEST-42 OK -U.CHAR ***\n");



       usi1 = -100          ;
       usi2 =  50 - 150     ;
       usi3 = -1            ;
       usi4 = 0 - 1         ;
       usi5 = -100          ;
       usi6 = -50 - 50      ;


       if ( usi2 != usi1 )

            printf(" ***  TEST-43 NG -U.SH.IN ***\n");

       else if ( usi3 != usi4 )

            printf(" ***  TEST-43 NG -U.SH.IN ***\n");

       else if ( usi5 != usi6 )

            printf(" ***  TEST-43 NG -U.SH.IN ***\n");

       else

            printf(" ***  TEST-43 OK -U.SH.IN ***\n");



       uli1 = -100                    ;
       uli2 =  50 - 150               ;
       uli3 = -1                      ;
       uli4 =  0 - 1                  ;
       uli5 = -100                    ;
       uli6 = -50 - 50                ;


       if ( uli1 != uli2 )

            printf(" ***  TEST-44 NG -U.LO.IN ***\n");

       else if ( uli3 != uli4 )

            printf(" ***  TEST-44 NG -U.LO.IN ***\n");

       else if ( uli5 != uli6 )

            printf(" ***  TEST-44 NG -U.LO.IN ***\n");

       else

            printf(" ***  TEST-44 OK -U.LO.IN ***\n");



       ull1 = -100                    ;
       ull2 =  50 - 150               ;
       ull3 = -1                      ;
       ull4 =  0 - 1                  ;
       ull5 = -100                    ;
       ull6 = -50 - 50                ;


       if ( ull1 != ull2 )

            printf(" ***  TEST-45 NG -U.LL,IN ***\n");

       else if ( ull3 != ull4 )

            printf(" ***  TEST-45 NG -U.LL,IN ***\n");

       else if ( ull5 != ull6 )

            printf(" ***  TEST-45 NG -U.LL,IN ***\n");

       else

            printf(" ***  TEST-45 OK -U.LL.IN ***\n");







}
