#include <stdio.h>

#undef sun
int main()
{
     double ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8    ;
     enum   day{mon,tue,wed,thu=9,fri,sat,sun}week          ;



      ans1 = 10  -10.5     ;

      ans2 = 'B' + 1.5  ;

      ans3 = fri - 10.5    ;

      ans4 = 1.25+ 10.5    ;


      if (  ans1 > -1  &&  ans1 < 0   )

            printf(" ***  TEST-1 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-1 NG INT-CONS ***\n");


      if (  ans2 > 'C' &&  ans2 < 'D' )

            printf(" ***  TEST-2 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-2 NG INT-CONS ***\n");


      if (  ans3 > -1  &&  ans3 < 0   )

            printf(" ***  TEST-3 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-3 NG INT-CONS ***\n");


      if (  ans4 > 11  &&  ans4 < 12  )

            printf(" ***  TEST-4 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-4 NG INT-CONS ***\n");





      ans5 = sizeof(  10  ) - 10.5     ;

      ans6 = sizeof( 'B' ) + 10.5   ;

      ans7 = sizeof(  fri ) - 10.5     ;

      ans8 = sizeof( 10.5 ) + 10.5     ;


      if (  ans5 > -7    &&    ans5 < -6  )

            printf(" ***  TEST-5 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-5 NG INT-CONS ***\n");


      if (  ans6 > 14    &&    ans6 < 15  )

            printf(" ***  TEST-6 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-6 NG INT-CONS ***\n");


      if (  ans7 > -7    &&    ans7 < -6 )

            printf(" ***  TEST-7 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-7 NG INT-CONS ***\n");


      if (  ans8 > 18    &&    ans8 < 19 )

            printf(" ***  TEST-8 OK ITN-CONS ***\n");
         else
            printf(" ***  TEST-8 NG INT-CONS ***\n");




  }
