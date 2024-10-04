#include <stdio.h>

#undef sun
int main()
{
     int    ans1,ans3,ans4,ans9,ans11,ans12,ans13,ans15,ans16;
     double ans2,ans5,ans6,ans7,ans8,ans10,ans14;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week;



     ans1 = 10  + 10  ;
     ans2 = 10  + 0.5 ;
     ans3 = 1   + 'A' ;
     ans4 = 10  + fri ;


     if (  ans1  ==  20   )

           printf(" ***  TEST-17 OK  INT-INT  ***\n");
        else
           printf(" ***  TEST-17 NG  INT-INT  ***\n");


     if (  ans2  ==  10.5 )

           printf(" ***  TEST-18 OK  INT-DBL  ***\n");
        else
           printf(" ***  TEST-18 NG  INT-DBL  ***\n");


     if (  ans3  ==  'B' )

           printf(" ***  TEST-19 OK  INT-CHA  ***\n");
        else
           printf(" ***  TEST-19 NG  INT-CHA  ***\n");


     if (  ans4  ==  20   )

           printf(" ***  TEST-20 OK  INT-ENU  ***\n");
        else
           printf(" ***  TEST-20 NG  INT-ENU  ***\n");




     ans5 = 0.5 + 1   ;
     ans6 = 0.5 + 0.25;
     ans7 = 0.5 + 'B' + 1.5  ;
     ans8 = 0.5 +fri  ;


     if (  ans5  ==  1.5  )

           printf(" ***  TEST-21 OK  DBL-INT  ***\n");
        else
           printf(" ***  TEST-21 NG  DBL-INT  ***\n");


     if (  ans6  ==  0.75 )

           printf(" ***  TEST-22 OK  DBL-DBL  ***\n");
        else
           printf(" ***  TEST-22 NG  DBL-DBL  ***\n");


     if (  ans7  == 'D' )

           printf(" ***  TEST-23 OK  DBL-CHA  ***\n");
        else
           printf(" ***  TEST-23 NG  DBL-CHA  ***\n");


     if (  ans8  ==  10.5 )

           printf(" ***  TEST-24 OK  DBL-ENU  ***\n");
        else
           printf(" ***  TEST-24 NG  DBL-ENU  ***\n");




     ans9 = 'A' + 4   ;
     ans10= 'A' + 0.5  + 2.5 ;
     ans11= 'A' + 'C' - 'B' ;
     ans12= 'A' + tue ;


     if (  ans9  ==  'E' )

           printf(" ***  TEST-25 OK  CHA-INT  ***\n");
        else
           printf(" ***  TEST-25 NG  CHA-INT  ***\n");


     if (  ans10 ==  'D' )

           printf(" ***  TEST-26 OK  CHA-DBL  ***\n");
        else
           printf(" ***  TEST-26 NG  CHA-DBL  ***\n");


     if (  ans11 ==  'B'  )

           printf(" ***  TEST-27 OK  CHA-CHA  ***\n");
        else
           printf(" ***  TEST-27 NG  CHA-CHA  ***\n");


     if (  ans12 ==  'B'  )

           printf(" ***  TEST-28 OK  CHA-ENU  ***\n");
        else
           printf(" ***  TEST-28 NG  CHA-ENU  ***\n");




     ans13= fri + 10  ;
     ans14= fri + 0.5 ;
     ans15= wed + 'A' ;
     ans16= fri + tue ;


     if (  ans13 ==  20   )

           printf(" ***  TEST-29 OK  ENU-INT  ***\n");
        else
           printf(" ***  TEST-29 NG  ENU-INT  ***\n");


     if (  ans14 ==  10.5 )

           printf(" ***  TEST-30 OK  ENU-DBL  ***\n");
        else
           printf(" ***  TEST-30 NG  ENU-DBL  ***\n");


     if (  ans15 ==  'C'  )

           printf(" ***  TEST-31 OK  ENU-CHA  ***\n");
        else
           printf(" ***  TEST-31 NG  ENU-CHA  ***\n");


     if (  ans16 ==  11   )

           printf(" ***  TEST-32 OK  ENU-ENU  ***\n");
        else
           printf(" ***  TEST-32 NG  ENU-ENU  ***\n");


  }
