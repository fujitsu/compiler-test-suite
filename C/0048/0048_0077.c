#include <stdio.h>

#undef sun
int main()
{
     int    ans1, ans2, ans3, ans4, ans5, ans6          ;
     int    ans7, ans8, ans9, ans10,ans11,ans12         ;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week    ;



#if INT64
     ans1 = sizeof( 10 )/2 * 10              ;
     ans2 = sizeof( 10 )/2 + 'A'          ;
     ans3 = sizeof( 10 )/2 - fri             ;
#else
     ans1 = sizeof( 10 ) * 10              ;
     ans2 = sizeof( 10 ) + 'A'          ;
     ans3 = sizeof( 10 ) - fri             ;
#endif

     if (  ans1  ==  40   )

           printf(" ***  TEST-7  OK  S(INT)-INT  ***\n");
        else
           printf(" ***  TEST-7  NG  S(INT)-INT  ***\n");


     if (  ans2  ==  'E' )

           printf(" ***  TEST-8  OK  S(INT)-CHA  ***\n");
        else
           printf(" ***  TEST-8  NG  S(INT)-CHA  ***\n");


     if (  ans3  ==  -6   )

           printf(" ***  TEST-9  OK  S(INT)-ENU  ***\n");
        else
           printf(" ***  TEST-9  NG  S(INT)-ENU  ***\n");




#if INT64
     ans4 = sizeof( 'B' )/2 - 10              ;
     ans5 = sizeof( 'B' )/2 + 'B'             ;
     ans6 = sizeof( 'B' )/2 * fri             ;
#else
     ans4 = sizeof( 'B' ) - 10              ;
     ans5 = sizeof( 'B' ) + 'B'             ;
     ans6 = sizeof( 'B' ) * fri             ;
#endif


     if (  ans4  ==  -6   )

           printf(" ***  TEST-10 OK  S(CHA)-INT  ***\n");
        else
           printf(" ***  TEST-10 NG  S(CHA)-INT  ***\n");


     if (  ans5  ==  'F' )

           printf(" ***  TEST-11 OK  S(CHA)-CHA  ***\n");
        else
           printf(" ***  TEST-11 NG  S(CHA)-CHA  ***\n");


     if (  ans6  ==  40   )

           printf(" ***  TEST-12 OK  S(CHA)-ENU  ***\n");
        else
           printf(" ***  TEST-12 NG  S(CHA)-ENU  ***\n");




#if INT64
     ans7 = sizeof( wed )/2 - 10              ;
     ans8 = sizeof( wed )/2 + 'A'          ;
     ans9 = sizeof( wed )/2 * fri             ;
#else
     ans7 = sizeof( wed ) - 10              ;
     ans8 = sizeof( wed ) + 'A'          ;
     ans9 = sizeof( wed ) * fri             ;
#endif


     if (  ans7  ==  -6   )

           printf(" ***  TEST-13 OK  S(ENU)-INT  ***\n");
        else
           printf(" ***  TEST-13 NG  S(ENU)-INT  ***\n");


     if (  ans8  ==  'E' )

           printf(" ***  TEST-14 OK  S(ENU)-CHA  ***\n");
        else
           printf(" ***  TEST-14 NG  S(ENU)-CHA  ***\n");


     if (  ans9  ==  40   )

           printf(" ***  TEST-15 OK  S(ENU)-ENU  ***\n");
        else
           printf(" ***  TEST-15 NG  S(ENU)-ENU  ***\n");




     ans10 = sizeof( 0.5 ) * 10              ;
     ans11 = sizeof( 0.5 ) - 9               ;
     ans12 = sizeof( 0.5 ) + fri             ;


     if (  ans10 ==  80   )

           printf(" ***  TEST-16 OK  S(DBL)-INT  ***\n");
        else
           printf(" ***  TEST-16 NG  S(DBL)-INT  ***\n");


#if INT64||LONG64 || __x86_64__ || __aarch64__
     if (  ans11 ==  -1  )
#else
     if (  ans11 ==  4294967295  )
#endif

           printf(" ***  TEST-17 OK  S(DBL)-CHA  ***\n");
        else
           printf(" ***  TEST-17 NG  S(DBL)-CHA  ***\nans11:%d\n",ans11);


     if (  ans12 ==  18   )

           printf(" ***  TEST-18 OK  S(DBL)-ENU  ***\n");
        else
           printf(" ***  TEST-18 NG  S(DBL)-ENU  ***\n");

  }
