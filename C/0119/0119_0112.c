#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{

struct tag {
           int a1 ;
           int a2[2] ;
           } x[5] = { { {10}, {10,20} },
                          { {20}, {20,30} },
                          { {30}, {30,40} },
                          { {40}, {40,50} },
                          { {50}, {50} }    } ;


  printf("********** SCPII32 TEST START **********\n");

  if (x[0].a1 == 10 && x[1].a1 == 20 && x[2].a1 == 30
                      && x[3].a1 == 40 && x[4].a1 == 50)
      printf(" ***** SCPII32 - 01 ***** O   K *****\n");
  else
      printf(" ***** SCPII32 - 01 ***** N   G *****\n");
  if (x[0].a2[0] == 10 && x[1].a2[0] == 20 &&
      x[2].a2[0] == 30 && x[3].a2[0] == 40 &&
                              x[4].a2[0] == 50    )
      printf(" ***** SCPII32 - 02 ***** O   K *****\n");
  else
      printf(" ***** SCPII32 - 02 ***** N   G *****\n");
  if (x[0].a2[1] == 20 && x[1].a2[1] == 30 &&
      x[2].a2[1] == 40 && x[3].a2[1] == 50   )
      printf(" ***** SCPII32 - 03 ***** O   K *****\n");
  else
      printf(" ***** SCPII32 - 03 ***** N   G *****\n");

  printf("********** SCPII32 TEST  END  **********\n");
  exit(0);
}
