#include <stdio.h>


#undef sun
int main()
{
     int    nin1, nin2, nin3, nin4, nin5, nin6          ;
     int    nin7, nin8, nin9, nin10,nin11,nin12         ;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week    ;



     nin1 = ( char) 1  * 1                 ;
     nin2 = ( int ) 1  + 'C'            ;
     nin3 = ( char) 15 - fri               ;


     if (  nin1  ==  1    )

           printf(" ***  TEST-1  OK  (INT)INT-INT   ***\n");
        else
           printf(" ***  TEST-1  NG  (INT)INT-INT   ***\n");


     if (  nin2  == 'D'  )

           printf(" ***  TEST-2  OK  (INT)INT-CHA   ***\n");
        else
           printf(" ***  TEST-2  NG  (INT)INT-CHA   ***\n");


     if (  nin3  ==   5   )

           printf(" ***  TEST-3  OK  (INT)INT-ENU   ***\n");
        else
           printf(" ***  TEST-3  NG  (INT)INT-ENU   ***\n");



     nin4 = ( int )'B' * 1                 ;
     nin5 = ( int )'D' + 'A' - 'C'   ;
     nin6 = ( int )'B' - tue               ;


     if (  nin4  ==  'B' )

           printf(" ***  TEST-4  OK  (INT)CHA-INT   ***\n");
        else
           printf(" ***  TEST-4  NG  (INT)CHA-INT   ***\n");


     if (  nin5  ==  'B' )

           printf(" ***  TEST-5  OK  (INT)CHA-CHA   ***\n");
        else
           printf(" ***  TEST-5  NG  (INT)CHA-CHA   ***\n");


     if (  nin6  ==  'A' )

           printf(" ***  TEST-6  OK  (INT)CHA-ENU   ***\n");
        else
           printf(" ***  TEST-6  NG  (INT)CHA-ENU   ***\n");



     nin7 = ( int )tue + 1                 ;
     nin8 = ( char)tue * 'A'            ;
     nin9 = ( int )tue - fri               ;


     if (  nin7  ==  2    )

           printf(" ***  TEST-7  OK  (INT)ENU-INT   ***\n");
        else
           printf(" ***  TEST-7  NG  (INT)ENU-INT   ***\n");


     if (  nin8  == 'A' )

           printf(" ***  TEST-8  OK  (INT)ENU-CHA   ***\n");
        else
           printf(" ***  TEST-8  NG  (INT)ENU-CHA   ***\n");


     if (  nin9  == -9    )

           printf(" ***  TEST-9  OK  (INT)ENU-ENU   ***\n");
        else
           printf(" ***  TEST-9  NG  (INT)ENU-ENU   ***\n");



     nin10= ( int )1.5 * 1                 ;
     nin11= ( int )1.5 + 'C'            ;
     nin12= ( int )1.5 - fri               ;


     if (  nin10 ==  1    )

           printf(" ***  TEST-10 OK  (INT)DBL-INT   ***\n");
        else
           printf(" ***  TEST-10 NG  (INT)DBL-INT   ***\n");


     if (  nin11 ==  'D'  )

           printf(" ***  TEST-11 OK  (INT)DLB-CHA   ***\n");
        else
           printf(" ***  TEST-11 NG  (INT)DLB-CHA   ***\n");


     if (  nin12 ==  -9   )

           printf(" ***  TEST-12 OK  (INT)DBL-ENU   ***\n");
        else
           printf(" ***  TEST-12 NG  (INT)DBL-ENU   ***\n");



  }
