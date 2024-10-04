#include <stdio.h>

#undef sun
int main()
{
     int    ans1,ans3,ans4,ans9,ans10    ;
     int    ans11,ans12,ans13,ans15,ans16;
     double ans2,ans5,ans6,ans7,ans8,ans14;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week;



     ans1 = 10        ;
     ans2 = (int)3.25 ; 
     ans3 = ! 'A'  ; 



     if (  ans1  ==  10   )

           printf(" ***  TEST-1  OK  INT      ***\n");
        else
           printf(" ***  TEST-1  NG  INT      ***\n");

     if (  ans2  == 3     )

           printf(" ***  TEST-2  OK  DBL      ***\n");
        else
           printf(" ***  TEST-2  NG  DBL      ***\n");


     if (  ans3  ==  0    )

           printf(" ***  TEST-3  OK  CHA      ***\n");
        else
           printf(" ***  TEST-3  NG  CHA      ***\n");


     if (  16   ==  8 << tue )

           printf(" ***  TEST-4  OK  ENU      ***\n");
        else
           printf(" ***  TEST-4  NG  ENU      ***\n");




     ans5 = 0.5 - 1   ;
     ans6 = 0.5 * 0.25;




     if (  ans5  == -0.5  )

           printf(" ***  TEST-5  OK  DBL-INT  ***\n");
        else
           printf(" ***  TEST-5  NG  DBL-INT  ***\n");


     if (  ans6  ==  0.125)

           printf(" ***  TEST-6  OK  DBL-DBL  ***\n");
        else
           printf(" ***  TEST-6  NG  DBL-DBL  ***\n");


     if (  1.5  !=  'C'  )

           printf(" ***  TEST-7  OK  DBL-CHA  ***\n");
        else
           printf(" ***  TEST-7  NG  DBL-CHA  ***\n");


     if (  1.5>= mon   )

           printf(" ***  TEST-8  OK  DBL-ENU  ***\n");
        else
           printf(" ***  TEST-8  NG  DBL-ENU  ***\n");




     ans9 = 'O' &  0            ;
     ans10= 'O' && 0.25         ;
     ans11= ('A' ?  'C':0 )  ;
     ans12= 'O' ^ mon          ;


     if (  ans9  ==  0  )

           printf(" ***  TEST-9  OK  CHA-INT  ***\n");
        else
           printf(" ***  TEST-9  NG  CHA-INT  ***\n");


     if (  ans10 == 1      )

           printf(" ***  TEST-10 OK  CHA-DBL  ***\n");
        else
           printf(" ***  TEST-10 NG  CHA-DBL  ***\n");


     if (  ans11 == 'C' )

           printf(" ***  TEST-11 OK  CHA-CHA  ***\n");
        else
           printf(" ***  TEST-11 NG  CHA-CHA  ***\n");


     if (  ans12 == 'O' )

           printf(" ***  TEST-12 OK  CHA-ENU  ***\n");
        else
           printf(" ***  TEST-12 NG  CHA-ENU  ***\n");




     ans13= fri | 10  ;
     ans14= fri || 0.1 ;
     ans15= tue && 'A' ;
     ans16= fri * tue ;


     if (  ans13 ==  10   )

           printf(" ***  TEST-13 OK  ENU-INT  ***\n");
        else
           printf(" ***  TEST-13 NG  ENU-INT  ***\n");


     if (  ans14 ==  1    )

           printf(" ***  TEST-14 OK  ENU-DBL  ***\n");
        else
           printf(" ***  TEST-14 NG  ENU-DBL  ***\n");


     if (  ans15 ==  1    )

           printf(" ***  TEST-15 OK  ENU-CHA  ***\n");
        else
           printf(" ***  TEST-15 NG  ENU-CHA  ***\n");


     if (  ans16 ==  10   )

           printf(" ***  TEST-16 OK  ENU-ENU  ***\n");
        else
           printf(" ***  TEST-16 NG  ENU-ENU  ***\n");


  }
