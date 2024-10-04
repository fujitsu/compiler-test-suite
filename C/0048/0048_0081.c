#include <stdio.h>

#undef sun
int main()
{
     double nin1, nin2, nin3, nin4                      ;
     double ndb1, ndb2, ndb3, ndb4, ndb5, ndb6, ndb7    ;
     double ndb8, ndb9, ndb10,ndb11,ndb12,ndb13,ndb14   ;
     double ndb15,ndb16                                 ;
     double sin1, sin2, sin3, sin4                      ;
     double sdb1, sdb2, sdb3, sdb4                      ;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week    ;



     nin1 = ( int ) 1  + 0.5               ;

     if (  nin1 > 1  &&  nin1 < 2  )

           printf(" ***  TEST-9  OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-9  NG INT-CONS ***\n");



     nin2 = ( int )'B' + 1.5            ;

     if (  nin2 >  67   &&   nin2 <  68  )

           printf(" ***  TEST-10 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-10 NG INT-CONS ***\n");



     nin3 = ( int )tue + 1.5               ;

     if (  nin3 > 2   && nin3 < 3   )

           printf(" ***  TEST-11 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-11 NG INT-CONS ***\n");



     nin4 = ( int )1.5 + 1.5               ;

     if (  nin4 > 2   && nin4 < 3   )

           printf(" ***  TEST-12 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-12 NG INT-CONS ***\n");



     ndb1 = ( double )1 + 1                ;
     ndb2 = ( double )1 + 'A' - 'C'  ;
     ndb3 = ( double )1 + fri              ;
     ndb4 = ( double )1 + 1.5              ;

     if (  sizeof( (double)1 ) == 8  )
        {

           printf(" ***  TEST-13 OK ITN-CONS ***\n");

           printf(" ***  TEST-14 OK ITN-CONS ***\n");

           printf(" ***  TEST-15 OK ITN-CONS ***\n");

           printf(" ***  TEST-16 OK ITN-CONS ***\n");
        }

        else
        {

           printf(" ***  TEST-13 NG INT-CONS ***\n");

           printf(" ***  TEST-14 NG INT-CONS ***\n");

           printf(" ***  TEST-15 NG INT-CONS ***\n");

           printf(" ***  TEST-16 NG INT-CONS ***\n");
        }



     ndb5 = ( double )'o' + 1              ;
     ndb6 = ( double )'o' + 'A'         ;
     ndb7 = ( double )'o' + fri            ;
     ndb8 = ( double )'o' + 1.5            ;

     if (  sizeof( (double)'o' ) == 8  )
        {

           printf(" ***  TEST-17 OK ITN-CONS ***\n");

           printf(" ***  TEST-18 OK ITN-CONS ***\n");

           printf(" ***  TEST-19 OK ITN-CONS ***\n");

           printf(" ***  TEST-20 OK ITN-CONS ***\n");
        }

        else
        {

           printf(" ***  TEST-17 NG INT-CONS ***\n");

           printf(" ***  TEST-18 NG INT-CONS ***\n");

           printf(" ***  TEST-19 NG INT-CONS ***\n");

           printf(" ***  TEST-20 NG INT-CONS ***\n");
        }



     ndb9 = ( double )tue + 1              ;
     ndb10= ( double )tue + 'C'         ;
     ndb11= ( double )tue + fri            ;
     ndb12= ( double )tue + 1.5            ;

     if (  sizeof( (double)fri ) == 8  )
        {

           printf(" ***  TEST-21 OK ITN-CONS ***\n");

           printf(" ***  TEST-22 OK ITN-CONS ***\n");

           printf(" ***  TEST-23 OK ITN-CONS ***\n");

           printf(" ***  TEST-24 OK ITN-CONS ***\n");
        }

        else
        {

           printf(" ***  TEST-21 NG INT-CONS ***\n");

           printf(" ***  TEST-22 NG INT-CONS ***\n");

           printf(" ***  TEST-23 NG INT-CONS ***\n");

           printf(" ***  TEST-24 NG INT-CONS ***\n");
        }



     ndb13= ( double )1.5 + 1              ;
     ndb14= ( double )1.5 + 'A'         ;
     ndb15= ( double )1.5 + fri            ;
     ndb16= ( double )1.5 + 1.5            ;

     if (  sizeof( (double)fri ) == 8  )
        {

           printf(" ***  TEST-25 OK ITN-CONS ***\n");

           printf(" ***  TEST-26 OK ITN-CONS ***\n");

           printf(" ***  TEST-27 OK ITN-CONS ***\n");

           printf(" ***  TEST-28 OK ITN-CONS ***\n");
        }

        else
        {

           printf(" ***  TEST-25 NG INT-CONS ***\n");

           printf(" ***  TEST-26 NG INT-CONS ***\n");

           printf(" ***  TEST-27 NG INT-CONS ***\n");

           printf(" ***  TEST-28 NG INT-CONS ***\n");
        }




     sin1 = sizeof(( int ) 1 ) + 1.5       ;

     if (  sin1 > 5   && sin1 < 6   )

           printf(" ***  TEST-29 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-29 NG INT-CONS ***\n");



     sin2 = sizeof(( int )'B') + 1.5       ;


     if (  sin2 > 5   && sin2 < 6   )

           printf(" ***  TEST-30 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-30 NG INT-CONS ***\n");



     sin3 = sizeof(( int )tue) + 1.5       ;


     if (  sin3 > 5   && sin3 < 6   )

           printf(" ***  TEST-31 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-31 NG INT-CONS ***\n");



     sin4 = sizeof(( int )1.5) + 1.5       ;


     if (  sin4 > 5   && sin4 < 6   )

           printf(" ***  TEST-32 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-32 NG INT-CONS ***\n");





     sdb1 = sizeof(( double ) 1 ) + 1.5    ;


     if (  sdb1 > 9   && sdb1 < 10  )

           printf(" ***  TEST-33 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-33 NG INT-CONS ***\n");



     sdb2 = sizeof(( double )'A') + 1.5    ;


     if (  sdb2 > 9   && sdb2 < 10  )

           printf(" ***  TEST-34 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-34 NG INT-CONS ***\n");



     sdb3 = sizeof(( double )tue) + 1.5    ;

     if (  sdb3 > 9   && sdb3 < 10  )

           printf(" ***  TEST-35 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-35 NG INT-CONS ***\n");



     sdb4 = sizeof(( double )1.5) + 1.5    ;


     if (  sdb4 > 9   && sdb4 < 10  )

           printf(" ***  TEST-36 OK ITN-CONS ***\n");
        else
           printf(" ***  TEST-36 NG INT-CONS ***\n");


}
