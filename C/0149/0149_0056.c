#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  struct tag { int aa;
                int bb;
             };
  int        (*arry1)[4];
  float      (*arry2)[4];
  struct tag (*arry3)[4];
  int         arry4[2][2] = { 1, 2, 3, 4 };
  float       arry5[2][2] = { 1.0, 2.0, 3.0, 4.0 };
  struct tag  arry6[2][2];
 
  printf("*** CATEGORY ** TEST ** START *** \n");
 
  arry1 = arry4;
  if( (*arry1)[3] == 4 )
    printf("*** CATEGORY-01 *** O   K *** \n");
  else
    printf("*** CATEGORY-01 *** ERROR *** \n");
 
  arry2 = arry5;
  if( (*arry2)[3] == 4.0 )
    printf("*** CATEGORY-02 *** O   K *** \n");
  else
    printf("*** CATEGORY-02 *** ERROR *** \n");
 
  arry6[1][1].aa = 2;
  arry3 = arry6;
  if( (*arry3)[3].aa == 2 )
    printf("*** CATEGORY-03 *** O   K *** \n");
  else
    printf("*** CATEGORY-03 *** ERROR *** \n");
 
  printf("*** CATEGORY ** TEST ** ENDED *** \n");
exit (0);
}
