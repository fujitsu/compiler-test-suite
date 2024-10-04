#include <stdio.h>

#undef sun
int main()
{
     int    sin1, sin2, sin3, sin4, sin5, sin6          ;
     int    sin7, sin8, sin9, sin10,sin11,sin12         ;
     int    sdb1, sdb2, sdb3, sdb4, sdb5, sdb6          ;
     int    sdb7, sdb8, sdb9, sdb10,sdb11,sdb12         ;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week    ;



     sin1 = sizeof(( int ) 1 ) + 1         ;
     sin2 = 'D' - sizeof(( char) 1 )    ;
     sin3 = sizeof(( int ) 1 ) * fri       ;


     if (  sin1  ==  5    )

           printf(" ***  TEST-13 OK  S(INT)INT-INT  ***\n");
        else
           printf(" ***  TEST-13 NG  S(INT)INT-INT  ***\n");


     if (  sin2  ==  'C' )

           printf(" ***  TEST-14 OK  S(INT)ITN-CHA  ***\n");
        else
           printf(" ***  TEST-14 NG  S(INT)ITN-CHA  ***\n");


     if (  sin3  ==  40   )

           printf(" ***  TEST-15 OK  S(INT)ITN-ENU  ***\n");
        else
           printf(" ***  TEST-15 NG  S(INT)ITN-ENU  ***\n");



     sin4 = sizeof(( int )'B') * 1         ;
     sin5 = 'D' - sizeof(( char)'B')    ;
     sin6 = sizeof(( int )'B') + wed       ;


     if (  sin4  ==  4    )

           printf(" ***  TEST-16 OK  S(INT)CHA-INT  ***\n");
        else
           printf(" ***  TEST-16 NG  S(INT)CHA-INT  ***\n");


     if (  sin5  ==  'C'  )

           printf(" ***  TEST-17 OK  S(INT)CHA-CHA  ***\n");
        else
           printf(" ***  TEST-17 NG  S(INT)CHA-CHA  ***\n");


     if (  sin6  ==  6       )

           printf(" ***  TEST-18 OK  S(INT)CHA-ENU  ***\n");
        else
           printf(" ***  TEST-18 NG  S(INT)CHA-ENU  ***\n");



     sin7 = sizeof(( int )tue) * 1         ;
     sin8 = sizeof(( char)tue) + 'C'    ;
     sin9 = sizeof(( int )tue) - fri       ;


     if (  sin7  ==  4    )

           printf(" ***  TEST-19 OK  S(INT)ENU-INT  ***\n");
        else
           printf(" ***  TEST-19 NG  S(INT)ENU-INT  ***\n");


     if (  sin8  ==  'D' )

           printf(" ***  TEST-20 OK  S(INT)ENU-CHA  ***\n");
        else
           printf(" ***  TEST-20 NG  S(INT)ENU-CHA  ***\n");


     if (  sin9  ==  -6   )

           printf(" ***  TEST-21 OK  S(INT)ENU-ENU  ***\n");
        else
           printf(" ***  TEST-21 NG  S(INT)ENU-ENU  ***\n");



     sin10= sizeof(( char)1.5) * 1         ;
     sin11= sizeof(( char)1.5) + 'D'    ;
     sin12= sizeof(( int )1.5) - fri       ;


     if (  sin10 ==  1    )

           printf(" ***  TEST-22 OK  S(INT)DBL-INT  ***\n");
        else
           printf(" ***  TEST-22 NG  S(INT)DBL-INT  ***\n");


     if (  sin11 == 'E' )

           printf(" ***  TEST-23 OK  S(INT)DBL-CHA  ***\n");
        else
           printf(" ***  TEST-23 NG  S(INT)DBL-CHA  ***\n");


     if (  sin12 ==  -6   )

           printf(" ***  TEST-24 OK  S(INT)DBL-ENU  ***\n");
        else
           printf(" ***  TEST-24 NG  S(INT)DBL-ENU  ***\n");






     sdb1 = sizeof(( double ) 1 ) + 1      ;
     sdb2 = sizeof(( float  ) 1 ) - 'F' ;
     sdb3 = sizeof(( double ) 1 ) + fri    ;


     if (  sdb1  ==  9    )

           printf(" ***  TEST-25 OK  S(DBL)INT-INT  ***\n");
        else
           printf(" ***  TEST-25 NG  S(DBL)INT-INT  ***\n");


     if (  sdb2  == -'B' )

           printf(" ***  TEST-26 OK  S(DBL)ITN-CHA  ***\n");
        else
           printf(" ***  TEST-26 NG  S(DBL)ITN-CHA  ***\n");


     if (  sdb3  ==  18   )

           printf(" ***  TEST-27 OK  S(DBL)ITN-ENU  ***\n");
        else
           printf(" ***  TEST-27 NG  S(DBL)ITN-ENU  ***\n");



     sdb4 = sizeof(( float  )'B') * 1      ;
     sdb5 = sizeof(( double )'B') + 'A' - 'E'    ;
     sdb6 = sizeof(( float  )'B') - fri    ;


     if (  sdb4  ==  4    )

           printf(" ***  TEST-28 OK  S(DBL)CHA-INT  ***\n");
        else
           printf(" ***  TEST-28 NG  S(DBL)CHA-INT  ***\n");


     if (  sdb5  ==  4    )

           printf(" ***  TEST-29 OK  S(DBL)CHA-CHA  ***\n");
        else
           printf(" ***  TEST-29 NG  S(DBL)CHA-CHA  ***\n");


     if (  sdb6  ==  -6   )

           printf(" ***  TEST-30 OK  S(DBL)CHA-ENU  ***\n");
        else
           printf(" ***  TEST-30 NG  S(DBL)CHA-ENU  ***\n");



     sdb7 = sizeof(( double )tue) - 1      ;
     sdb8 = sizeof(( float  )tue) + 'A' ;
     sdb9 = sizeof(( double )tue) * fri    ;


     if (  sdb7  ==  7    )

           printf(" ***  TEST-31 OK  S(DBL)ENU-INT  ***\n");
        else
           printf(" ***  TEST-31 NG  S(DBL)ENU-INT  ***\n");


     if (  sdb8  ==  'E' )

           printf(" ***  TEST-32 OK  S(DBL)ENU-CHA  ***\n");
        else
           printf(" ***  TEST-32 NG  S(DBL)ENU-CHA  ***\n");


     if (  sdb9  ==  80   )

           printf(" ***  TEST-33 OK  S(DBL)ENU-ENU  ***\n");
        else
           printf(" ***  TEST-33 NG  S(DBL)ENU-ENU  ***\n");



     sdb10= sizeof(( double )1.5) + 1      ;
     sdb11= sizeof(( float  )1.5) - 'E' ;
     sdb12= sizeof(( float  )1.5) * fri    ;


     if (  sdb10 ==  9    )

           printf(" ***  TEST-34 OK  S(DBL)DBL-INT  ***\n");
        else
           printf(" ***  TEST-34 NG  S(DBL)DBL-INT  ***\n");


     if (  sdb11 == -'A' )

           printf(" ***  TEST-35 OK  S(DBL)DBL-CHA  ***\n");
        else
           printf(" ***  TEST-35 NG  S(DBL)DBL-CHA  ***\n");


     if (  sdb12 ==  40   )

           printf(" ***  TEST-36 OK  S(DBL)DBL-ENU  ***\n");
        else
           printf(" ***  TEST-36 NG  S(DBL)DBL-ENU  ***\n");


  }
