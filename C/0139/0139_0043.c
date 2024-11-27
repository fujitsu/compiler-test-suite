#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
  
  
  
  
  
  
  

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




 

 

       in1 = 2200000000 +  800000000  ;
       in2 = 3000000000               ;


       if ( in1 != in2 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       ch1 = 300      ;
       ch2 = 150 + 150;
       ch3 = 256      ;
       ch4 = 255 + 1  ;
       ch5 = 400      ;
       ch6 = 300 + 100;


       if ( ch2 != ch1 )

            printf(" *** \n");

       else if ( ch3 != ch4 )

            printf(" *** \n");

       else if ( ch5 != ch6 )

            printf(" *** \n");

       else

            printf(" *** \n");



 

       si1 = 38000         ;
       si2 = 28000 + 10000 ;
       si3 = 32768         ;
       si4 = 32767 + 1    ;
       si5 = 40000         ;
       si6 = 35000 + 5000  ;


       if ( si2 != si1 )

            printf(" *** \n");

       else if ( si3 != si4 )

            printf(" *** \n");

       else if ( si5 != si6 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       li1 = 3000000000              ;
       li2 = 2500000000 +  500000000 ;


       if ( li1 != li2 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       sin1 = 2200000000 +  800000000  ;
       sin2 = 3000000000               ;


       if ( sin1 != sin2 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       sch1 = 300      ;
       sch2 = 100 + 200;
       sch3 = 128      ;
       sch4 = 127 + 1  ;
       sch5 = 400      ;
       sch6 = 300 + 100;


       if ( sch2 != sch1 )

            printf(" *** \n");

       else if ( sch3 != sch4 )

            printf(" *** \n");

       else if ( sch5 != sch6 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       ssi1 = 38000         ;
       ssi2 = 28000 + 10000 ;
       ssi3 = 32768         ;
       ssi4 = 32767 + 1     ;
       ssi5 = 40000         ;
       ssi6 = 35000 + 5000  ;


       if ( ssi2 != ssi1 )

            printf(" *** \n");

       else if ( ssi3 != ssi4 )

            printf(" *** \n");

       else if ( ssi5 != ssi6 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       sli1 = 3000000000              ;
       sli2 = 2500000000 +  500000000 ;


       if ( sli1 != sli2 )

            printf(" *** \n");

       else

            printf(" *** \n");


 
       uin1 = 3000000000 + 1000000000  ;
       uin2 = 4000000000               ;
       uin3 = 4294967294 +  1          ;
       uin4 = 4294967295               ;
       uin5 = 3300000000 +  700000000  ;
       uin6 = 4000000000               ;


       if ( uin1 != uin2 )

            printf(" *** \n");

       if ( uin3 != uin4 )

            printf(" *** \n");

       if ( uin5 != uin6 )

            printf(" *** \n");

       else

            printf(" *** \n");

 

       uch1 = 300      ;
       uch2 = 150 + 150;
       uch3 = 256      ;
       uch4 = 255 + 1  ;
       uch5 = 400      ;
       uch6 = 300 + 100;


       if ( uch2 != uch1 )

            printf(" *** \n");

       else if ( uch3 != uch4 )

            printf(" *** \n");

       else if ( uch5 != uch6 )

            printf(" *** \n");

       else

            printf(" *** \n");


 

       usi1 = 70000         ;
       usi2 = 30000 + 40000 ;
       usi3 = 65536         ;
       usi4 = 65535 + 1     ;
       usi5 = 70000         ;
       usi6 = 68000 + 2000  ;


       if ( usi2 != usi1 )

            printf(" *** \n");

       else if ( usi3 != usi4 )

            printf(" *** \n");

       else if ( usi5 != usi6 )

            printf(" *** \n");

       else

            printf(" *** \n");

exit (0);
}
