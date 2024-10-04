#include <stdio.h>
int main()
{

     int ans1, ans2, ans3 ;

#define a 1

     ans1=5    ;

     switch ( ans1 ) {

        case  3     :

              break                                                ;

        case  a + 4 :

              printf(" ***  TEST-1  OK  MACRO       ***\n");
              break                                                   ;

        default    :

              printf(" ***  TEST-1  NG  MACRO       ***\n");
        }
}
