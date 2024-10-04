#include <stdio.h>
int main()
{


   char  ch1[32767]    ;


   ch1[32766] = 1      ;

   if ( 1 == ch1[32766] )

           printf(" ***  TEST-18 OK  OBJECT   ***\n");
        else
           printf(" ***  TEST-18 NG  OBJECT   ***\n");



}
